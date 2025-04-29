<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Cek Umur</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 50px;
    }
    label, input {
      display: block;
      margin: 10px 0;
    }
    
  </style>
</head>
<body>

  <h2>Form Cek Umur</h2>

  <form method="POST" action="hasil.php">
    <label for="nama">Nama:</label>
    <input type="text" id="nama" name="nama" required>

    <label for="umur">Umur:</label>
    <input type="number" id="umur" name="umur" required>

    <button type="submit">Submit</button>
  </form>

</body>
</html>
