<?php
    $ch=curl_init();
    curl_setopt($ch,CURLOPT_URL,"104.250.105.160:3001");
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
    $output=curl_exec($ch);
    curl_close($ch);
    echo $output;
?>