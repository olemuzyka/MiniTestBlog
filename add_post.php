<?php
include("elements/bd.php");
if (isset($_POST['addPost'])){
	$text = strip_tags(trim($_POST['text']));
	$title = strip_tags(trim($_POST['title']));
	$author = strip_tags(trim($_POST['author']));
}


$new_post = "INSERT INTO `data` ( `title`, `author`, `text`, `date`)
VALUES ('$title', '$author','$text', CURRENT_TIMESTAMP)";



$add_post = mysqli_query($connect, $new_post);


if ($add_post) {
	echo "<html><head>
			<meta http-equiv='Refresh' content='0 ; URL=index.php'>
		</head></html>";
} else {
	echo "Error: " . $new_post . "<br>" . mysqli_error($connect);
}

mysqli_close($connect);

