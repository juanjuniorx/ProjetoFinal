<?php
session_start();
include("conexao.php");

$userName_usuario = mysqli_real_escape_string($conexao, $_POST['userName_usuario']);
$nome_usuario = mysqli_real_escape_string($conexao, $_POST['nome_usuario']);
$email_usuario = mysqli_real_escape_string($conexao, $_POST['email_usuario']);
$senha_usuario = mysqli_real_escape_string($conexao, $_POST['senha_usuario']);
$telefone_usuario = mysqli_real_escape_string($conexao, $_POST['telefone_usuario']);

$sql = "select count(*) as total from usuario where usuario = '$usuario'";
$result = my