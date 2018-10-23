<?php
if(isset($_GET['id'])){
	$id=$_GET['id'];
}
if(!isset($_GET['id'])){
	$id=1;
}

$selectPost = "SELECT * FROM `data` WHERE id='$id'";
$result_post = mysqli_query($connect, $selectPost);

if (!$result_post) {
	echo "<p> Request to fetch data from database failed<br> Error code : </p>";
	exit(mysqli_error($connect));
}

if (mysqli_num_rows($result_post) > 0) {
	$myPost = mysqli_fetch_array($result_post);
} else {
	echo "<p>No post in data</p>";
	exit();
}

