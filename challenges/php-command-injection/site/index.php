<?php
if(array_key_exists("ip",$_GET)){
    $cmd = "ping -c 2 " . $_GET['ip'];
    exec($cmd, $output,$returnCode);
    foreach ( $output as $i ) {
        print($i . "<br>");
    }
} else {
?>
    <h1>What would you like to ping ? </h1>
<form action=".">
    <input type="text" name="ip">
    <input type="submit" value="PING !">
</form>
<h1> Code of the script </h1>
<p><code>
<?php }

highlight_file("./index.php");

?>
</code>
</p>
