<?php
  error_reporting(0);
  //session_start();
  header('Cache-control: private'); // IE 6 FIX
  // always modified 
  header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
  // HTTP/1.1 
  header('Cache-Control: no-store, no-cache, must-revalidate');
  header('Cache-Control: post-check=0, pre-check=0', false);
  // HTTP/1.0 
  header('Pragma: no-cache');

  /* Start Original Scripts */
  include_once('sys/core/init.inc.php');

  // Instanciate class common
  $common = new common();
  $scriptRoot = '';
  define('SCRIPT_ROOT', $scriptRoot);
?>
<?php
  $page_title = "Welcome - Amba Business";
  include SCHOOL_ROOT .'includes/inc-header.php';
  include SCHOOL_ROOT .'includes/inc-header.php';
  include SCHOOL_ROOT .'includes/inc-nav.php';
?>
<?php
  include SCHOOL_ROOT .'includes/inc-footer.php';
?>


</body>
</html>