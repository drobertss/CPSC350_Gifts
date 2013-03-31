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
<?php
  	   include "db_connect.php";
	   $failed = 'hopeNot';
  	   if (isset($_POST['txtUser'])){
  $userName    =    mysql_real_escape_string($_POST['txtUser']);
  $password    =    mysql_real_escape_string($_POST['txtPassword']);
		 
         //robs code 
        $query = "SELECT username FROM users WHERE username='$userName'";
		
	$result = mysqli_query($db, $query);
		 //echo $result;
		 if ($row = mysqli_fetch_array($result)){
		 $failed = 'fail';
		 }
		 else{
		
			//Will's Code
			$query = "insert into users (username,password) values ('$userName',SHA('$password'));";
			$result = mysqli_query($db,$query);
			$failed = 'nofail';
			  }
       }
?>

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
        if ($failed == 'fail') {
        echo "<h2>Username Taken, Try Again!</h2>";
        }
		else if ($failed == 'nofail'){
		echo "<h2>Account Created</h2>";
		echo '<META http-equiv="refresh" content="0;URL=login.php">';
		}
		else {
		echo "<h2>Register</h2>";
		}
        ?>
    
<form method="post" action="Register.php">
<p>
<label for ="txtUser">Username:</label>
<input type="text" name="txtUser" id="txtUser" /></p>
<p>
<label for="txtPassword">Password:</label>
<input type="password" name="txtPassword" id="txtPassword" /></td>
<p><input type="submit" name="btnRegister" id="btnRegister" value="Register" /></p>
</form>
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
