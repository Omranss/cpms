<?php
include("config.php");
   session_start();

  $check = "select status from users where role = 'author' LIMIT 1";
  $c_res = mysqli_query($db, $check);
  while ($row = $c_res->fetch_assoc()) {
    if($row['status'] == 'N')
    {
        echo "<script>alert('Submission is turned off by the Admin');document.location='Homepage.php'</script>";
    }
}
?>