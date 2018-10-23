<?php
////include database
include("elements/bd.php");

include("elements/select_all_post_from_db.php");
include("elements/select_top_post.php");


?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/lightslider.css"/>


	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- Javascript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
	<script src="js/index.js"></script>
	<script src="js/lightslider.js"></script>

	<title>TestBlog</title>
</head>
<body>

<div class="topPost container col-lg-6">

	<?php
	//include handler showing top posts
	include("elements/get_top_post.php");

	?>

</div>

<div id="posts" class="posts container col-lg-6">

	<?php
	//include handler showing all posts
	include("elements/get_all_posts.php");

	?>


</div>
<div class="newPost container col-lg-6">
	<form id="formAddPost" action="add_post.php" method="post">
		<div class="form-group">
			<label for="Title">Add Title</label>
			<input type="text" class="form-control" id="title" name="title" placeholder="Enter title">
		</div>
		<div class="form-group">
			<label for="Author">Your Name</label>
			<input type="text" class="form-control" id="author" name="author" placeholder="Enter your name">
		</div>
		<div class="form-group">
			<label for="newPost">New Post</label>
			<textarea class="form-control" id="newPost" rows="3" name="text" placeholder="Write your post"></textarea>
		</div>
		<input type="submit" name="addPost" class="btn btn-success" id="create_post" value="Add Post">
	</form>
</div>
</body>
</html>