<?php
include("bd.php");
$selectTopPost = "SELECT p.title,p.id, COUNT(*) AS \"com\" 
FROM comments c 
LEFT JOIN data p ON c.post = p.id 
GROUP BY c.post, p.title 
ORDER BY com DESC
LIMIT 5";
$resultsTopPost = mysqli_query($connect, $selectTopPost);

if (!$resultsTopPost) {
	echo "<p> Request to fetch data from database failed<br> Error code : </p>";
	exit(mysqli_error($connect));
}

if (mysqli_num_rows($resultsTopPost) > 0) {
	$myTopPost = mysqli_fetch_array($resultsTopPost);
}

mysqli_close($connect);