<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Spill.com</title>
        
        <link href="styles/global.css" rel="stylesheet">
    </head>
    <body>
        <?php
        require 'dbConnect.php';
        ?>
        <div id="wrapper">
            <header>
                <h1>Spill</h1>
            </header>
            <nav>
                <ul>
                    <li><a href="">Home</a></li>
                    <?php
                    require 'navigation.php';
                    ?>
                    <li><a href="store.php">Store</a></li>
                    <li><input type="text" placeholder="Enter Movie Name"></li>
                </ul>
            </nav>
        </div>
    </body>
</html>
