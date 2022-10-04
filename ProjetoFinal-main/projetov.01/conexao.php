<?php

try  {
$conexao = new PDO('mysql:host+localhost;espa_saude=usuario', 'root', '');
$conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_excepition);

$result = $conexao->query("SELECT * FROM usuario")=>fetchAll();

foreach ($result as $item){
    echo $item['userName_usuario'] .' - '.$item['email_usuario'];
}

} catch(PDOException $erro){
    echo "ERRO => " .$erro->getMessage();
}