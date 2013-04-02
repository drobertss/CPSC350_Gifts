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
echo"<a class=\"registration\" href=\"savedGifts.php\">Hi! $_SESSION[name]</a> <a class=\"log-in\" href=\"logout.php\">LOG OUT</a>";
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
<div id="LeftPart">
<div id="Menu">
<div id="Menu_header">
<div class="menu_header_left"> <span class="menu_text">Gift Ideas</span>
</div>
<div class="menu_header_right"> </div>
</div>
<div id="Menu_content"> 
<a class="menu_item" href="catagoryResults.php?catid=13"><span>All Gifts</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=1"><span>Babies</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=2"><span>Men</span></a><br>
<a class="menu_item"  href="catagoryResults.php?catid=3"><span>Woman</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=4"><span>Kids</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=5"><span>Teens</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=6"><span>Friends</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=7"><span>Family</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=8"><span>Pet/Pet Lover</span></a><br>
<a><span>Occasion Type</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=9"><span>Birthday</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=10"><span>Holidays</span></a><br>
<a class="menu_item" href="catagoryResults.php?catid=12"><span>Just Because</span></a><br>

<a class="menu_item" href="catagoryResults.php?catid=11"><span>Special Events</span></a><br>

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
<h1> About Us </h1>

</td>
</tr>
</tbody>
</table>
</div>

<!-- This is where we need to implement code to access the database so that we get the first four gifts from the database, there info, and links to images of them -->
<div id="Page_center">
<p> We here at Find A Gift think that buying gifts for your loved ones should be effortless! We strive to help you, our dedicated clients, 
think less about those pesky birthdays and anniversaries! Imagine a world in which you have hours and hours of free time. Do you know what 
that free time would be consumed with in the real world? Thinking of gift ideas! You have so many other things to worry about in your life,
don't you? So let us worry about this one. Here at Find A Gift, we've got your back! 
</p>
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