<?php
session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz"><head><title>Find A Gift</title>

<meta http-equiv="Content-language" content="cs">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content=" ">
<meta name="keywords" content=" ">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<meta name="author" content="Klára Frolichová, Sunlight webdesign">
<meta name="Copyright" content="Klára Frolichová, Sunlight webdesign 2007">
<meta name="design" content="Sunlight webdesign - http://www.sunlight.cz, info@sunlight.cz">
<link rel="stylesheet" type="text/css" href="default.css" title="default">
</head>


<body>
<div id="WholePage">
<div id="Inner">
<div id="Container">
<div id="Head">
<div id="Head_left">
<div id="Leaf_top"></div>
<div id="Leaf_bottom"> 
<?php
include "db_connect.php";
if(isset($_SESSION['name'])){
echo"<a class=\"registration\" href=\"profile.php\">Hi! $_SESSION[name]</a> <a class=\"log-in\" href=\"logout.php\">LOG OUT</a>";
}
else{
echo"<a class=\"registration\" href=\"Register.php\">REGISTRATION</a> <a class=\"log-in\" href=\"login.php\">LOG IN</a>";
}
?>
</div>
</div>
<div id="Head_right">
<div id="Logo">
<div id="Name"><span class="blue"></span><span>Find A Gift</span></div>
<div id="Informations">Home of all your gift idea needs </div>
</div>
<div id="Top_menu"> 
<a class="kart" href="?page=home"><span>TBD</span></a> 
<a class="contact" href="?page=home"><span>ABOUT</span></a>
<a class="contact" href="?page=home"><span>CONTACT</span></a>
<a class="help" href="?page=home"><span>HELP</span></a>
<a class="home" href="index.php"><span>HOME</span></a>
</div>

</div>
</div>
<div id="CentralPart">
<div id="LeftPart">
<div id="Menu">
<div id="Menu_header">
<div class="menu_header_left"> <span class="menu_text">Gift Ideas</span>
</div>
<div class="menu_header_right"> </div>
</div>
<div id="Menu_content"> <a class="menu_item" href="?page=home"><span>Babies</span></a><br>
<a class="menu_item" href="?page=home"><span>Men</span></a><br>
<a class="menu_item" href="?page=home"><span>Woman</span></a><br>
<a class="menu_item" href="?page=home"><span>Kids</span></a><br>
<a class="menu_item" href="?page=home"><span>Teens</span></a><br>
<a class="menu_item" href="?page=home"><span>Friends</span></a><br>
<a class="menu_item" href="?page=home"><span>Family</span></a><br>
<a class="menu_item" href="?page=home"><span>Pet/Pet Lover</span></a><br>
<a><span>Occasion Type</span></a><br>
<a class="menu_item" href="?page=home"><span>Birthday</span></a><br>
<a class="menu_item" href="?page=home"><span>Holidays</span></a><br>
<a class="menu_item" href="?page=home"><span>Anniversary</span></a><br>
<a class="menu_item" href="?page=home"><span>Just Because</span></a><br>

<a class="menu_item" href="?page=home"><span>Special Events</span></a><br>

</div>
</div>
<div id="Poll">
<div id="Poll_header">
<div class="menu_header_left"> <span class="menu_text">SEARCH</span>
</div>
<div class="menu_header_right"> </div>
</div>
     <form method="post" action="results.php">
    <input type="text" id="search" name="search" size="30" />
    <input type="submit" value="Search" name="submit" />
  </form>
</div>
</div>
</div>

<div id="RightPart">
<div id="Page">
<div id="Page_header">
<h1>Advantages of Find a Gift</h1>
<table>
<tbody>
<tr>
<td class="page_header_img"><img src="img/basket.gif" alt="illustration image"></td>
<td class="page_header_text">
<p>Click on a product and get sent to the website in which you can buy it.</p>
</td>
<td class="page_header_img"><img src="img/idea.gif" alt="illustration image"></td>
<td class="page_header_text">
<p>Can't think of anything? No problem, leave the gift ideas to us. Just tell us who its for and we will take care of everything.</p>
</td>
</tr>
<tr>
<td class="page_header_img"><img src="img/basket.gif" alt="illustration image"></td>
<td class="page_header_text">
<p>This service is completely free!!!</p>
</td>

</td>
</tr>
</tbody>
</table>
</div>

<!-- This is where we need to implement code to access the database so that we get the first four gifts from the database, there info, and links to images of them -->
<div id="Page_center">
<?php
$query = "SELECT productName,price,url,productDescription,photoURL,company,rating FROM gifts limit 4"; //modified version of Robert Patterson's code
  		$result = mysqli_query($db, $query)
		or die("Error Querying Database");
while($row = mysqli_fetch_array($result)) {
  			$name = $row['productName'];
  			$price = $row['price'];
  			$URL = $row['url'];
  			$description = $row['productDescription'];
			$photo = $row['photoURL'];
			$company = $row['company'];
			$rating = $row['rating'];

		  	echo "<table><tbody><tr><td class=\"page_center_button\"><a class=\"page_center_buy\" href=\"$URL\" title=\"buy\"><span>buy</span></a><a class=\"page_center_info\" href=\"$URL\" title=\"more info\"><span>more-info</span></a></td><td class=\"page_center_content\"><div class=\"page_center_text\"> <span class=\"blue2\">$name</span><br><span class=\"black\">$company</span><br><span class=\"gray\">$description</span><br><br><span class=\"green\">Price: \$$price</span><br></div></td><td class=\"page_center_img\"> <img src=\"$photo\" alt=\"illustration image\"> </td>";

	    }
	    echo "</table>\n"; 
		?>
</div>
</div>
</div>
<div class="cleaner"></div>
</div>
<div id="Bottom">
<p class="down">Copyright © 2007, <a href="http://www.sunlight.cz">Design by: Sunlight webdesign</a></p>
<p class="down"><a href="http://www.sunlight.cz">Supported by </a><a href="http://www.hosting24.com/" target="_blank">Hosting24.com</a>
</p>
<div class="down2">
<p> <a href="http://validator.w3.org/check?uri=referer"><img src="http://www.w3.org/Icons/valid-xhtml11" alt="Valid XHTML 1.1" height="31" width="88"></a>
</p>
</div>
</div>
</div>
</div>
</div>
</body></html>