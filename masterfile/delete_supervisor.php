<?php
include'../includes/connection.php';
	$con->query("DELETE FROM `personal_data` WHERE `personal_id` = '$_GET[id]'") or die(mysqli_error());
	echo "<script type='text/javascript'>alert('Record Successfully Deleted!');</script>";
	echo "<script>document.location='supervisor.php'</script>";
?>