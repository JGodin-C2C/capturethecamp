<?php
if(array_key_exists("password",$_GET)){

$hash = md5($_GET['password']);
if ($hash == trim(file_get_contents("./password.md5"))){
    print( "Congrats ! here is your file :" . file_get_contents("/flag/flag"));
}else{
    print("<h1>ACCESS IS DENIED</h1>");
}
}else{?>

<form action=".">
Enter the password :
<input type="text" name="password"></input>
<input type="submit">
</form>

<?php
}
?>
