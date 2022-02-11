<?php

$conn = mysqli_connect("localhost", "root", "", "tutoyt");

$SQL = "SELECT GROUP_CONCAT( JSON_OBJECT('id_tutor', t2.id_tutor, 'name', t1.name, 'rating', TRUNCATE(t2.rating, 1),";
$SQL = $SQL." 'nreviews', t2.nreviews)) FROM user t1 INNER JOIN (SELECT id_tutor, AVG(stars) AS rating, COUNT(stars) ";
$SQL = $SQL."as nreviews FROM session GROUP BY id_tutor) t2 WHERE t1.id = t2.id_tutor";

$data = mysqli_query($conn, $SQL);
$row = mysqli_fetch_array($data);

echo "[".$row[0]."]";

?>