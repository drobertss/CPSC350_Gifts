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
if(isset($_GET['giftid'])){
$gid = $_GET['giftid'];
$user = $_SESSION['name'];
$query = "insert into savedgifts values ((select id from users where username ='".$user."'),".$gid.");";
$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
}
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
<?php
if(isset($_SESSION['name'])){
echo"<a class=\"kart\" href=\"savedGifts.php\"><span>Saved Gifts</span></a>";
}
?>

<a class="contact" href="about.php"><span>About</span></a>
<a class="contact" href="contact.php"><span>Contact</span></a>
<a class="help" href="help.php"><span>Help</span></a>
<a class="home" href="index.php"><span>Home</span></a>
</div>

</div>
</div>
<div id="CentralPart">
          <?php
  if (isset($_POST['search']) || isset($_SESSION['search']))
  {
  if(isset($_POST['search'])){
  
  	$searchterm = $_POST['search'];
	$_SESSION['search'] = $searchterm;
	}
	else if(isset($_SESSION['search'])){
	$searchterm = $_SESSION['search'];
	}
	$searchterm = mysqli_real_escape_string($db,trim($searchterm));
  		$query = "SELECT * FROM gifts where productName LIKE '%$searchterm%'";
  		$result = mysqli_query($db, $query)
   			or die("Error Querying Database");
   		while($row = mysqli_fetch_array($result)) {
  			$id = $row['id'];
			$name = $row['productName'];
  			$price = $row['price'];
  			$URL = $row['url'];
  			$description = $row['productDescription'];
			$photo = $row['photoURL'];
			$company = $row['company'];
			$rating = $row['rating'];
if(isset($_SESSION['name'])){
		  	echo "<table><tbody><tr><td class=\"page_center_button\"><a class=\"page_center_buy\" href=\"$URL\" title=\"buy\"><span>buy</span></a><a class=\"page_center_info\" href=\"$URL\" title=\"more info\"><span>more-info</span></a></td><td class=\"page_center_content\"><div class=\"page_center_text\"> <span class=\"blue2\">$name</span><br><span class=\"black\">$company</span><br><span class=\"gray\">$description</span><br><br><span class=\"green\">Price: \$$price</span><br><a href=results.php?giftid=$id>Save Gift Idea</a></div></td><td class=\"page_center_img\"> <img src=\"$photo\" alt=\"illustration image\"> </td>";
			}
			else{
			echo "<table><tbody><tr><td class=\"page_center_button\"><a class=\"page_center_buy\" href=\"$URL\" title=\"buy\"><span>buy</span></a><a class=\"page_center_info\" href=\"$URL\" title=\"more info\"><span>more-info</span></a></td><td class=\"page_center_content\"><div class=\"page_center_text\"> <span class=\"blue2\">$name</span><br><span class=\"black\">$company</span><br><span class=\"gray\">$description</span><br><br><span class=\"green\">Price: \$$price</span><br></div></td><td class=\"page_center_img\"> <img src=\"$photo\" alt=\"illustration image\"> </td>";
			}

	    }
	    echo "</table>\n"; 
  	}
  	
  
  ?>
<div id="Page_center">




</div>
</div>
</div>
<div class="cleaner"></div>

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