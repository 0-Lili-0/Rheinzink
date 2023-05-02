<?php
/*$host = 'localhost';
$data = 'rheinzink';
$user = 'root';
$pass = '';
$chrs = 'utf8mb4';
$attr = 'mysql:host=$host;dbname=$data;charset=$chrs';
$opts = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];*/


 
$serveur= "localhost";
 
    $base= "rheinzink";
 
    $dbrzuser = "root";
 
    $dbrzpwd = "";
 
    $dbrz = mysqli_connect($serveur,$dbrzuser,$dbrzpwd,$base);
 
    
?>