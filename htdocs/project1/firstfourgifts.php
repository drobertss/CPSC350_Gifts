<?php

// Written by Robert Patterson

<p> Here you can view the top four gifts. </p>

//sets up the label
<label for="rating">Rating:</label>

//sets up input for the rating label
<input type="text"> id="rating" name="rating" /><br />



//stating of query
$query= "SELECT productName
		 FROM project1
		 LIMIT 4";

//execution of query
$result= mysqli_query($db, $query)
	or die("Error Querying The Database");
	
//closing of it
mysqli_close($db);

?>