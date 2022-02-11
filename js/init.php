<?php

//------Inicialization
$conn = mysqli_connect("localhost", "root", "", "tutoyt");
$SQL = "select GROUP_CONCAT( JSON_OBJECT('id_school', id_school, 'name', name)) from classes";

$data = mysqli_query($conn, $SQL);

$row = mysqli_fetch_array($data);

echo "[".$row[0]."]";

?>