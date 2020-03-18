<?php

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if(!isset($_POST)) die();

session_start();

$response = [];

$con = mysqli_connect('localhost', 'root', '', 'test_site');

$username = mysqli_real_escape_string($con, $_POST['username']);
$title_video = mysqli_real_escape_string($con, $_POST['title_video']);
$id_video = mysqli_real_escape_string($con, $_POST['id_video']);

$query ="INSERT INTO `libyoutub` (`ID`, `title_video`, `id_video`, `username`) VALUES (NULL,'$title_video','$id_video', '$username' )";
$result = mysqli_query($con, $query);
