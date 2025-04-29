<?php 
    
    echo "Nugroho Adi Pamungkas";
    echo "<br>";
    echo "<br>";

    echo "2. Syntax Dasar PHP <br>";
    $nama = "Nugroho Adi Pamungkas";
    $nim = 2211102064;
    echo  "nama saya $nama dengan NIM $nim";
    echo "<br>";
    echo "<br>";

    echo "3. Variabel dan Operator <br>";
    $a = 10;
    $b = 5;
    echo "Penjumlahan : ".$a + $b;
    echo "<br>";
    echo "Pengurangan : ".$a - $b;
    echo "<br>";
    echo "Perkalian : ".$a * $b;
    echo "<br>";
    echo "Pembagian :  ".$a / $b;
    echo "<br>";
    echo "Modulus : " .$a % $b;
    echo "<br>";
    echo "<br>";
    
    
    echo "4. Pengkondisian (IF, ELSE, SWITCH)<br>";
    $hari = "Senin";
    
    switch ($hari) {
        case "Senin":
            echo "Hari ini Senin";
            break;
        case "Selasa":
            echo "Hari ini Selasa";
            break;
        default:
            echo "Hari tidak diketahui";
    }
    
    echo "<br>";
    echo "<br>";

    echo "5. Perulangan (FOR, WHILE, FOREACH) <br>";
    for ($i = 1; $i <= 5; $i++) {
        echo "Angka ke-$i <br>";
    }
    
    echo "<br>";
    echo "<br>";

    echo "5. Perulangan (FOR, WHILE, FOREACH)<br>";
    $buah = ["Apel", "Jeruk", "Mangga"];
    foreach ($buah as $b) {
        echo "Buah: $b <br>";
    }

    echo "<br>";
    echo "<br>";

    echo "6. Array <br>";
    $hewan = ["Kucing", "Anjing", "Burung"]; 
    echo $hewan[2]; // Output: Kucing 
    
    echo"<br>";
    echo"<br>";

    echo "7. Request (GET & POST)";
    echo "<br> a. Form dengan Method GET";
    ?>
    
    <form method="GET" action="proses.php">
        
    Nama: <input type="text" name="nama">
    NIM: <input type="number" name="NIM">
    <input type="submit">
    
    </form>
     
    <?php
    echo"<br>";
    echo "b. Form dengan Method POST"
    ?>
    
    
    <form method="POST" action="proses1.php">
        
    Nama: <input type="text" name="nama">
    NIM: <input type="number" name="NIM">
    <input type="submit">
    
    </form>
    
    <?php
   
?>