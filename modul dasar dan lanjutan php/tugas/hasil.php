<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            }
        
        #hasil {
          margin-top: 20px;
          font-weight: bold;
        }

    </style>
</head>
<body>

<?php 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = htmlspecialchars($_POST["nama"]);
    $umur = (int)$_POST["umur"];

    if ($umur >= 18) {
        $status = "Dewasa";
    } else {
        $status = "Belum Dewasa";
    }

    echo "<div id='hasil'>$nama adalah <strong>$status</strong></div>";
}

?>
    
</body>
</html>

