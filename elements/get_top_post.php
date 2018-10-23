
<ul id="lightSlider">
	<?php
	do {
		printf(" <li><div class='post_title text-center card bg-info'>
			        <p class='post_name'><a class='text-white' href='view_post.php?id=%s'>%s</a></p>
			        <p>Number of comments: %s</p>
			       </div></li>",
					$myTopPost["id"], $myTopPost["title"], $myTopPost["com"]);
	}while ($myTopPost = mysqli_fetch_array($resultsTopPost));

	?>
</ul>