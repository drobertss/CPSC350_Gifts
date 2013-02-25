<?php


<p> You can rate gifts on this site as well.</p>

//sets up the label
<label for="rating">Rating:</label>

//sets up input for the rating label
<input type="text"> id="rating" name="rating" /><br />



//stating of query
$query= "INSERT INTO project1(ratingcolumn)VALUES(rating)";

//execution of query
$result= mysqli_query($db, $query)
	or die("Error Querying The Database");
	
//closing of it
mysqli_close($db);

?>