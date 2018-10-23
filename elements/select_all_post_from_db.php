<?php

$selectData = "SELECT *, COUNT(*) AS \"com\" FROM comments c RIGHT JOIN data p ON c.post = p.id GROUP BY c.post, p.title ORDER BY 'date'";
$results = mysqli_query($connect, $selectData);

if (!$results) {
	echo "<p> Request to fetch data from database failed<br> Error code : </p>";
	exit(mysqli_error($connect));
}

if (mysqli_num_rows($results) > 0) {
	$myRow = mysqli_fetch_array($results);
} else {
	echo "<p>No post yet</p>";
}

mysqli_close($connect);