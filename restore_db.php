<?php
require 'config.php';

// Only allow admins
if (!is_logged_in() || !is_admin()) {
    header("Location: index.php");
    exit;
}

if (isset($_FILES['restore_file']) && $_FILES['restore_file']['error'] === 0) {
    $filePath = $_FILES['restore_file']['tmp_name'];
    $fileName = $_FILES['restore_file']['name'];
    $fileType = mime_content_type($filePath);

    // Check file extension
    if (strtolower(pathinfo($fileName, PATHINFO_EXTENSION)) !== 'sql') {
        header("Location: admin_dashboard.php?restore=fail&type");
        exit;
    }

    // Optional: Check file type (should be plain text or SQL)
    if ($fileType !== 'text/plain' && $fileType !== 'application/octet-stream') {
        header("Location: admin_dashboard.php?restore=fail&type");
        exit;
    }

    // Build the mysql command securely
    $command = sprintf(
        'mysql --user=%s --password=%s --host=%s %s < %s',
        escapeshellarg($DB_USER),
        escapeshellarg($DB_PASS),
        escapeshellarg($DB_HOST),
        escapeshellarg($DB_NAME),
        escapeshellarg($filePath)
    );

    // Execute the command
    system($command, $output);

    // Check if restore was successful (output 0 means success)
    if ($output === 0) {
        header("Location: admin_dashboard.php?restore=success");
    } else {
        header("Location: admin_dashboard.php?restore=fail");
    }
    exit;
} else {
    header("Location: admin_dashboard.php?restore=fail");
    exit;
}
?>