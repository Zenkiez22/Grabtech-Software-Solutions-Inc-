<?php
// Include database connection
include 'include/connect_sjcr.inc.php';

// Read JSON input
$data = json_decode(file_get_contents('php://input'), true);

if (isset($data['image']) && isset($data['student_id'])) {
    $imageData = $data['image'];
    $student_id = $data['student_id'];

    // Remove "data:image/png;base64," part
    $imageData = str_replace('data:image/png;base64,', '', $imageData);
    $imageData = str_replace(' ', '+', $imageData);
    $image = base64_decode($imageData);

    // Define image file path
    $img_dir = 'images/' . uniqid() . '.png'; // Create a unique name for the image
    file_put_contents($img_dir, $image); // Save image to the directory

    // Update database with image path
    $stmt = $con->prepare("UPDATE enrollment_db SET img_dir = :img_dir WHERE student_id = :student_id");
    $stmt->bindParam(':img_dir', $img_dir);
    $stmt->bindParam(':student_id', $student_id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => $stmt->errorInfo()]);
    }
} else {
    echo json_encode(['success' => false, 'error' => 'Invalid data.']);
}
?>
