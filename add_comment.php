<?php
include("elements/bd.php");


$text = strip_tags(trim($_POST['textComment']));
$author = strip_tags(trim($_POST['authorComment']));
$id = $_POST['id'];

if (isset($_POST['add_comment'])) {


	// sql query
	$queryNewComment = "INSERT INTO `comments` (`post`, `author`, `text`, `date`)
						VALUES ('$id','$author','$text',CURRENT_TIMESTAMP)";


	$addComment = mysqli_query($connect, $queryNewComment);

	//redirection to the post page

	if ($addComment) {
		echo "<html><head>
			<meta http-equiv='Refresh' content='0 ; URL=view_post.php?id=$id'>
		</head></html>";
	} else {
		echo "Error: " . $addComment . "<br>" . mysqli_error($connect);
	}

	mysqli_close($connect);


	exit();
};