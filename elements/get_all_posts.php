<?php

do {
	printf(" <div class='card text-center'>
			        <p class='post_name'><a href='view_post.php?id=%s'>%s</a></p>
			        <p class='post_date'>Date: %s</p>
			        <p class='post_adds'>Author: %s</p>
			        <p>%s ...</p>
			        <p>Number of comments: %s</p>
			        </div>",
					$myRow["id"], $myRow["title"], $myRow["date"], $myRow["author"], substr($myRow["text"],0,100),$myRow["com"]);
} while ($myRow = mysqli_fetch_array($results));
