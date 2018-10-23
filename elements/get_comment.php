<?php

if($myComment === NULL){
	echo "<div class='card text-center'><p>No comments yet</p></div>";
}
else{
	do {
		printf("<div class='card text-center'>
						<p>Author: <br> %s</p>
                        <p>Comment: <br> %s</p>
				        <p>Date: %s</p>
					</div>",
			$myComment["author"],
			$myComment["text"],
			$myComment["date"]);
	} while ($myComment = mysqli_fetch_array($resultComment));
}
