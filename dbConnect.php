<?php 
// connect to the database, and select our database
try {
    // create a PDO instance
    $pdo = new PDO('mysql:host=localhost:3306;dbname=podcastingsitedb', 'pUser', 'pass');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
} catch (PDOException $e) {
    ?>
<h2>Could not connect to database.</h2>
<?php
    exit();
}
?>
