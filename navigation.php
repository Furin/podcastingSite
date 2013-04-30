<?php
// fetch categories and podcasts
try {
    $sql = 'SELECT * FROM categories';
    $catsResult = $pdo->query($sql);
} catch (PDOException $e) {
    ?> 
<h2>Could not get categories info from database.</h2>
    <?php
    exit();
}

while ($catRow = $catsResult->fetch()) {
    
    ?>
<li><a><?= $catRow['categoryTitle']?></a>
    <?php
    
    try {
        $sql = "SELECT * FROM podcasts
                WHERE podcasts.categoryID = $catRow[categoryID]";
        $podsResult = $pdo->query($sql);
    } catch (PDOException $e) {
        ?> 
    <h2>Could not get podcasts info from database.</h2>
        <?php
        exit();
    }
    ?>
    <ul>
    <?php
    while ($podcastRow = $podsResult->fetch()) {
        ?>
        <li><a><?= $podcastRow['podcastTitle'] ?></a></li>
        <?php
    }
    ?>
    </ul>
</li>
    <?php
}
?>
