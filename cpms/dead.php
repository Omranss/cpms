<?php
   include('config.php');
   session_start();

?>

<?php
//enable and disable submission/reviews acceptance
$sub_action = $_POST['sub_action'];
$rev_action = $_POST['rev_action'];
$sql_author = "update users set status='Y' where role = 'author'";
$sql2_author = "update users set status='N' where role = 'author'";
$sql_reviewer = "update users set status='Y' where role = 'reviewer'";
$sql2_reviewer = "update users set status='N' where role = 'reviewer'";

if($sub_action == 'none' && $rev_action == 'none')
{
    header("location: generate_report.php");
}

elseif ($sub_action == 'Y' && $rev_action == 'Y')
{
    mysqli_query($db, $sql_author);
    mysqli_query($db, $sql_reviewer);
    echo "<script>alert('Submission/reviews Allowed');document.location='generate_report.php'</script>";

}
elseif ($sub_action == 'N' && $rev_action == 'N') 
{

    mysqli_query($db, $sql2_author);
    mysqli_query($db, $sql2_reviewer);
    echo "<script>alert('Submission/reviews Not Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'none' && $rev_action == 'N') 
{
    mysqli_query($db, $sql2_reviewer);
    echo "<script>alert('Reviews Not Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'none' && $rev_action == 'Y') 
{

    mysqli_query($db, $sql_reviewer);
    echo "<script>alert('Reviews Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'Y' && $rev_action == 'N') 
{

    mysqli_query($db, $sql_author);
    mysqli_query($db, $sql2_reviewer);
    echo "<script>alert('Submission Allowed, Reviews not Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'N' && $rev_action == 'none') 
{
    mysqli_query($db, $sql2_author);
    echo "<script>alert('Submission Not Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'Y' && $rev_action == 'none') 
{

    mysqli_query($db, $sql_author);
    echo "<script>alert('Submission Allowed');document.location='generate_report.php'</script>";
}
elseif ($sub_action == 'N' && $rev_action == 'Y') 
{

    mysqli_query($db, $sql2_author);
    mysqli_query($db, $sql_reviewer);
    echo "<script>alert('Submission Not Allowed, Reviews Allowed');document.location='generate_report.php'</script>";
}

    
?>