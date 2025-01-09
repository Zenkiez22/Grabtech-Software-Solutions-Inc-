let inactivityTime = function() {
    let time;
    // Logout the user after a period of inactivity
    function logout() {
        alert("You have been logged out due to inactivity.");
        window.location.href = 'logout.php'; // Redirect to a logout page
    }

    // Reset the timer on user activity
    function resetTimer() {
        clearTimeout(time);
        time = setTimeout(logout, 20 * 60 * 1000); // 20 minutes of inactivity
    }

    // Detect user activity
    window.onload = resetTimer;
    document.onmousemove = resetTimer;
    document.onkeydown = resetTimer;
    document.onscroll = resetTimer;
    document.onclick = resetTimer;
};

inactivityTime();
