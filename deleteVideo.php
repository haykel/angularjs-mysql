<?php

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

if(!isset($_POST)) die();

session_start();

$response = [];
$reponse =[];

$con = mysqli_connect('localhost', 'root', '', 'test_site');

$username = mysqli_real_escape_string($con, $_POST['username']);

$query = "DELETE FROM `libyoutub`  WHERE id_video='$username'";

$result = mysqli_query($con, $query);

