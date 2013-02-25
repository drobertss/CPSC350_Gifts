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
    session_start();
	$fail = 'hopenot';
    include "db_connect.php";
    if (isset($_POST['username'])){
	     $name = $_POST['username'];
         $pw = $_POST['pw'];
  	     $name = mysqli_real_escape_string($db,trim($name));
         $pw = mysqli_real_escape_string($db,trim($pw));

         $query = "select * from users WHERE username = '$name' AND password = SHA('$pw')";
         $result = mysqli_query($db, $query)
         or die("Error Querying Database");
         if ($row = mysqli_fetch_array($result))
         {
		  $fail = 'nofail';
		
		 $_SESSION['name'] = $name;
   		
		}
		else{$fail = 'fail';}
   		
       }
?>

<body>
<div id="WholePage">
<div id="Inner">
<div id="Container">
<div id="Head">
<div id="Head_left">
<div id="Leaf_top"></div>
<div id="Leaf_bottom"> <a class="registration" href="Register.php">REGISTRATION</a> <a class="log-in" href="login.php">LOG IN</a> </div>
</div>
<div id="Head_right">
<div id="Logo">
<div id="Name"><span class="blue"></span><span>Find A Gift</span></div>
<div id="Informations">Home of all your gift idea needs </div>
</div>
<div id="Top_menu"> <a class="kart" href="?page=home"><span>TBD</span></a> 
<a class="contact" href="?page=home"><span>ABOUT</span></a>
<a class="contact" href="?page=home"><span>CONTACT</span></a>
<a class="help" href="?page=home"><span>HELP</span></a>
<a class="home" href="index.php"><span>HOME</span></a>
</div>

</div>
</div>
<div id="CentralPart">

<?php
        if ($fail == 'fail') {
        echo "<h2>Incorrect Username/Password</h2>";
        }
		else if ($fail == 'nofail'){
		echo "<h2>Logged in</h2>";
		echo '<META http-equiv="refresh" content="0;URL=index.php">';
		}
		else{echo "<h2>Login</h2>";}
        ?>
        
       
          <form method="post" action="login.php">
    <p>
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" </p>
    <p>
    <label for="password">Password:</label>
    <input type="password" id="password" name="pw" /></p>

    <p><input type="submit" value="login" name="submit" /></p>
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