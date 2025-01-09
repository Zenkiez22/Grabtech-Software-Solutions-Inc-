<?php
// Start the session
session_start();
include 'include/connect_sjcr.inc.php'; // Include your database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['student_id'])) {
    $student_id = $_POST['student_id'];

    // Handle the image upload
    if (isset($_FILES['image'])) {
        $image = $_FILES['image'];
        $target_dir = "uploads/"; // Directory where images will be stored
        $target_file = $target_dir . basename($image["name"]);
        
        // Check if the image file is a valid image
        $check = getimagesize($image["tmp_name"]);
        if ($check !== false) {
            // Move the uploaded file to the target directory
            if (move_uploaded_file($image["tmp_name"], $target_file)) {
                // Update the database with the image path
                $stmt = $con->prepare("UPDATE enrollment_db SET img_dir = :img_dir WHERE student_id = :student_id");
                $stmt->bindParam(':img_dir', $target_file);
                $stmt->bindParam(':student_id', $student_id);

                if ($stmt->execute()) {
                    $success = "Image uploaded and database updated successfully!";
                } else {
                    $error = "Failed to update the database.";
                }
            } else {
                $error = "Failed to upload image.";
            }
        } else {
            $error = "File is not an image.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Capture Image</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2>Capture Image for Student</h2>

    <?php if (isset($error)): ?>
        <div class="alert alert-danger"><?php echo $error; ?></div>
    <?php endif; ?>

    <?php if (isset($success)): ?>
        <div class="alert alert-success"><?php echo $success; ?></div>
    <?php endif; ?>

    <form method="POST" enctype="multipart/form-data">
        <input type="hidden" name="student_id" value="<?php echo htmlspecialchars($_GET['student_id']); ?>">

        <div class="mb-3">
            <h4>Capture Image with Webcam</h4>
            <video id="video" width="640" height="480" autoplay></video>
            <button type="button" id="start-camera" class="btn btn-primary">Start Camera</button>
            <button type="button" id="capture" class="btn btn-success" style="display:none;">Capture</button>
            <canvas id="canvas" width="640" height="480" style="display:none;"></canvas>
            <br>
            <input type="hidden" name="image" id="image-data">
        </div>

        <div class="mb-3">
            <h4>Or Upload Image File</h4>
            <input type="file" name="image" accept="image/*" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

<script>
    const video = document.getElementById('video');
    const canvas = document.getElementById('canvas');
    const context = canvas.getContext('2d');

    document.getElementById('start-camera').addEventListener('click', async () => {
        try {
            const stream = await navigator.mediaDevices.getUserMedia({ video: true });
            video.srcObject = stream;
            document.getElementById('capture').style.display = 'inline';
        } catch (error) {
            console.error("Error accessing the camera: ", error);
            alert("Could not access the camera. Please check permissions.");
        }
    });

    document.getElementById('capture').addEventListener('click', () => {
        context.drawImage(video, 0, 0, canvas.width, canvas.height);
        const dataUrl = canvas.toDataURL('image/png');
        document.getElementById('image-data').value = dataUrl; // Save image data URL to hidden input
        canvas.style.display = 'block'; // Show the captured image if needed
    });
</script>

</body>
</html>
