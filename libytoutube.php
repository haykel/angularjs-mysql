<?php

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
if(!isset($_POST)) die();
session_start();
$reponse =[];

$con = mysqli_connect('localhost', 'root', '', 'test_site');

$username = mysqli_real_escape_string($con, $_POST['username']);

$query = "SELECT * FROM `libyoutub`  WHERE username='$username'";

$result = mysqli_query($con, $query);

while( ($row = mysqli_fetch_array($result)) ) {
    
    $response ["username"]= "".$row["username"]."";
    $response ["id_video"]= "".$row["id_video"]."";
    $response ["title_video"]= "".$row["title_video"]."";
    array_push($reponse, $response); 
}

echo json_encode($reponse);
