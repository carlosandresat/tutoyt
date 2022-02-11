<?php

$conn = mysqli_connect("localhost", "root", "", "tutoyt");

$MAXLEN = "SET session group_concat_max_len = 4096;";

$SQL = "SELECT GROUP_CONCAT( JSON_OBJECT('name', reviews.name, 'id', reviews.id_student,";
$SQL = $SQL." 'stars', reviews.stars, 'text', reviews.text)) FROM (SELECT t2.name,";
$SQL = $SQL." t1.id_student, t1.stars, t1.text FROM`session` t1 INNER JOIN user t2";
$SQL = $SQL." ON t1.id_student = t2.id WHERE t1.text IS NOT NULL ORDER BY RAND() LIMIT 10) reviews";

mysqli_query($conn, $MAXLEN);

$data = mysqli_query($conn, $SQL);

$row = mysqli_fetch_array($data);

echo "[".$row[0]."]";

?>