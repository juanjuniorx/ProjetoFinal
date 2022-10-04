<?php

try{
    $conn = new PDO('mysql:host=localhost;espa_saude=usuario','root',' ');
} catch (PDOException $e){
    $e->getMessage();
}

