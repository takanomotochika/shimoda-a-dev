<?php
session_start();
session_regenerate_id(true);
if(isset($_SESSION['member_login'])==false)
{
	print 'ようこそゲスト様　';
	print '<a href="member_login.html">会員ログイン</a><br />';
	print '<br />';
}
else
{
	print 'ようこそ';
	print $_SESSION['member_name'];
	print ' 様　';
	print '<a href="member_logout.php">ログアウト</a><br />';
	print '<br />';
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YOMOTTO書籍</title>
</head>
<body>

<?php
try
{
require_once('../common/common.php');
if (DEBUG) 
{
$dsn='mysql:dbname=shop;host=localhost;charset=utf8';
$user='root';
$password='';
$dbh=new PDO($dsn,$user,$password);
$dbh->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
}
else{
$dbServer = '127.0.0.1';
$dbUser = $_SERVER['MYSQL_USER'];
$dbPass = $_SERVER['MYSQL_PASSWORD'];
$dbName = $_SERVER['MYSQL_DB'];
$dsn = "mysql:host={$dbServer};dbname={$dbName};charset=utf8";
$dbh = new PDO($dsn, $dbUser, $dbPass);
}
$sql='SELECT code,name,price FROM mst_product WHERE 1';
$stmt=$dbh->prepare($sql);
$stmt->execute();
$dbh=null;
print '商品一覧<br /><br />';
?>

<form method="post" action="">
キーワード<br />
<input type="text" name="key" ><br />
<br />
<input type="submit" value="検索">
</form>

<?php
$key='';
if(isset($_POST['key'])){
  $key=$_POST['key'];
}
if($key!==''){
  print $key.'が含まれる商品';
  print '<br/>';
}

$count=0;
while(true) 
 { 
 	$rec=$stmt->fetch(PDO::FETCH_ASSOC); 
        
 	if($rec==false) 
 	{   
            if($key==!'')
            {
             print'検索結果'.$count.'件';
            } 
            break;
        }   

	if(($key==='')||(strpos($rec['name'],$key)!==false))
        { 
 	print '<a href="shop_product.php?procode='.$rec['code'].'">'; 
 	print $rec['name'].'---'; 
 	print $rec['price'].'円'; 
       	print '</a>'; 
 	print '<br />'; 
        $count++;
	} 
 } 

print '<br />';
print '<a href="shop_cartlook.php">カートを見る</a><br />';
}
catch (Exception $e)
{
	 print 'ただいま障害により大変ご迷惑をお掛けしております。';
	 exit();
}
?>

</body>
</html>
