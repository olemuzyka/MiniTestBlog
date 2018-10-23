<?php
if(isset($_GET['id'])){
	$id=$_GET['id'];
}

$selectComment = "SELECT * FROM `comments` WHERE post='$id'";
$resultComment = mysqli_query($connect, $selectComment);

if (!$resultComment) {
	echo "<p> Запрос на выборку данных из базы не прошел <br> Код ошибки : </p>";
	exit(mysqli_error($connect));
}

if (mysqli_num_rows($resultComment) > 0) {
	$myComment = mysqli_fetch_array($resultComment);
}
