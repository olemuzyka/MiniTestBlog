<?php

include("elements/bd.php");
include("elements/select_post.php");

?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
	      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="css/style.css">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<!-- Javascript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>
	<script src="js/index.js"></script>

	<title><?php echo $myPost["title"] ?></title>
</head>
<body>

<div class="viewPost container col-lg-6">

	<?php
	//include handler showing post
	include("elements/get_post.php");

	?>
</div>
<div class="comments container col-lg-6">
	<p>Comments:</p>
	<?php
	//include handlers showing and adding comment
	include("elements/select_comments.php");
	include("elements/get_comment.php");
	?>
</div>
<div class="container col-lg-6">
	<form action="index.php">
		<input type="submit" name="back" class="btn btn-success" id="create_post" value="Go Back">
	</form>
</div>
<div class="newComment container col-lg-6">
	<form id="formAddComment" action="add_comment.php" method="post">
		<div class="form-group">
			<label for="author">Your Name</label>
			<input type="text" class="form-control" id="author" name="authorComment" placeholder="Enter your name">
		</div>
		<div class="form-group">
			<label for="newComment">New Comment</label>
			<textarea class="form-control" id="newComment" rows="3" name="textComment" placeholder="Write your comment"></textarea>
		</div>
			<input type="hidden" name="id" value="<?php echo $id?>">
			<input type="submit" name="add_comment" class="btn btn-success" id="create_post" value="Add Comment">
	</form>
</div>

</body>
</html>