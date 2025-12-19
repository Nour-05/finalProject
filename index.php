<?php include 'db.php'; ?>

<!DOCTYPE html>
<html>
<head>
    <title>Coffee Shop</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Welcome to the Coffee Shop ☕</h1>
    <form method="POST">
        <label for="drink">Choose a drink:</label>
        <select name="drink">
            <?php
            $sql = "SELECT name FROM drinks";
            $result = $conn->query($sql);
            while ($row = $result->fetch_assoc()) {
                echo "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
            }
            ?>
        </select>
        <input type="submit" value="See Price">
    </form>

    <?php
    if (isset($_POST['drink'])) {
        $drink = $_POST['drink'];
        $sql = "SELECT price FROM drinks WHERE name='$drink'";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            echo "<h2>$drink costs $" . $row['price'] . "</h2>";
        }
    }
    ?>
</body>
</html>
