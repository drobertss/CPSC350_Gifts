//=============Configuring Server and Database=======
$host        =    'localhost';
$user        =    'root';
$password    =    'vertrigo';
$database    =    'dbsneaker';

$conn        =    mysql_connect($host,$user,$password) or die('Server Information is not Correct');
mysql_select_db($database,$conn) or die('Database Information is not correct');

//===============End Server Configuration============

//=============Starting Registration Script==========

$userName    =    mysql_real_escape_string($_POST['txtUser']);

$password    =    mysql_real_escape_string($_POST['txtPassword']);
$password    =    md5($password);  //===Encrypt Password

if(isset($_POST['btnRegister'])) //===When I will Set the Button to 1 or Press Button to register

{
$query    =    "insert into tbladmin(admin_usr_name,admin_pwd)values('$userName','$password')";
$res    =    mysql_query($query);
header('location:success_register.php');//Redirect To Success Page
}