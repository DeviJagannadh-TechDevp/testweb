<?php 
   $fn  = $_GET['fn'];
   $str = $_GET['str'];
   $file = fopen("script.txt".$fn.".record","w");
   echo fwrite($file,$str);
   fclose($file);
?>
