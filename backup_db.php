<?php
require 'config.php';

// Define backup filename
$backupFile = 'backup_' . date("Y-m-d") . '.sql';

// Adjust path to your mysqldump executable
// Example for XAMPP on Windows:
$mysqldump = 'C:\\xampp\\mysql\\bin\\mysqldump.exe';

// Run mysqldump and write to file
$command = "\"$mysqldump\" --user={$DB_USER} --password={$DB_PASS} --host={$DB_HOST} {$DB_NAME} > \"$backupFile\"";
system($command, $retval);

// Check if file was created and not empty
if (file_exists($backupFile) && filesize($backupFile) > 0) {
    // Force download
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header("Content-Disposition: attachment; filename={$backupFile}");
    readfile($backupFile);

    // Delete the temp file after download
    unlink($backupFile);
    exit;
} else {
    echo "❌ Backup failed. Please check mysqldump path and database credentials.";
}
?>
