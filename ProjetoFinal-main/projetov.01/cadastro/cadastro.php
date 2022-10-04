<?php

include_once('login.php');
$userName_usuario=$_Post['userName_usuario'];
$nome_usuario=$_Post['nome_usuario'];
$email_usuario=$_Post['email_usuario'];
$senha_usuario_=$_Post['senha_usuario'];
$telefone_usuario=$_Post['telefone_usuario'];

$sql = 'INSERT INTO usuario(userName_usuario,nome_usuario,email_usuario,senha_usuario,telefone_usuario) VALUES (:userName_usuario,:nome_usuario,email_usuario,senha_usuario,telefone_usuario)';
$stmt = $conn->prepare($sql);
$stmt->bindParam('userName_usuario',$userName_usuario);
$stmt->bindParam('nome_usuario',$nome_usuario);
$stmt->bindParam('email_usuario',$email_usuario);
$stmt->bindParam('senha_usuario',$senha_usuario);
$stmt->bindParam('telefone_usuario',$telefone_usuario);
$stmt->execute();


