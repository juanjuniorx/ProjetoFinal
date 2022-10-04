<?php
$print = function($class){
    if(file_exists('classes/'.$class.'.php')){
        include_once('classes/'.$class.'.php');
    }
};

sql_autoload_register($print);
?>