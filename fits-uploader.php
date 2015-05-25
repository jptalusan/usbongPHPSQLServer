<?php

date_default_timezone_set('Asia/Manila');
header('Content-Type: application/json');
include('usbong-fits-connect.php');

$utree_dir = "trees/";
$icons_dir = "icons/";

$uploader = $mysqli->real_escape_string($_POST['uploader']);
$treeTitle = $mysqli->real_escape_string($_POST['treeTitle']);
$filePath = $utree_dir . basename($_FILES['treePath']['name']);
$youtubeLink = $mysqli->real_escape_string($_POST['youtubelink']);
$description = $mysqli->real_escape_string($_POST['description']);
$iconToUpload = $icons_dir . basename($_FILES['iconToUpload']['name']);
$version = $mysqli->real_escape_string($_POST['version']);

echo $uploader . "\r\n";
echo $treeTitle . "\r\n";
echo $filePath . "\r\n";
echo $youtubeLink . "\r\n";
echo $description . "\r\n";
echo $iconToUpload . "\r\n";

$uploadOk = 1;
$imageFileType = pathinfo($filePath,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
	$check = getimagesize($_FILES["treePath"]["tmp_name"]);
	if($check !== false) {
		echo "File is an image - " . $check["mime"] . ".\r\n";
		$uploadOk = 1;
	} else {
		echo "File is not an image.\r\n";
		$uploadOk = 0;
	}
}

$temp = explode(".",$_FILES["treePath"]["name"]);
$newtreename = $treeTitle . '.' . end($temp);

// Check if file already exists
if (file_exists("$utree_dir/$newtreename")) {
	echo "Sorry, file already exists.\r\n";
	$uploadOk = 0;
}
// Check file size
if ($_FILES["treePath"]["size"] > 500000) {
	echo "Sorry, your file is too large.\r\n";
	$uploadOk = 0;
}

// Allow certain file formats
if($imageFileType != "utree") {
	echo "Sorry, only .utree files are allowed.\r\n";
	$uploadOk = 0;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
	echo "Sorry, your file was not uploaded.\r\n";
	// if everything is ok, try to upload file
} else {
	if (move_uploaded_file($_FILES["treePath"]["tmp_name"], "$utree_dir/$newtreename")) {
	// if (move_uploaded_file($_FILES["treePath"]["tmp_name"], $filePath)) {
		echo "The file ". basename( $_FILES["treePath"]["name"]). " has been uploaded.\r\n";
	} else {
		echo "Sorry, there was an error uploading your file.\r\n";
	}
}

$uploadIconOk = 1;
$imageFileType = pathinfo($iconToUpload, PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
	$check = getimagesize($_FILES["iconToUpload"]["tmp_name"]);
	if($check !== false) {
		echo "File is an image - " . $check["mime"] . ".\r\n";
		$uploadIconOk = 1;
	} else {
		echo "File is not an image.\r\n";
		$uploadIconOk = 0;
	}
}

$temp = explode(".",$_FILES["iconToUpload"]["name"]);
$newfilename = $treeTitle . '.' . end($temp);

// Check if file already exists
if (file_exists("$icons_dir/$newfilename")) {
	echo "Sorry, file already exists.\r\n";
	$uploadIconOk = 0;
}
// Check file size
if ($_FILES["iconToUpload"]["size"] > 500000) {
echo "Sorry, your file is too large.\r\n";
$uploadIconOk = 0;
}
// Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
	echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.\r\n";
	$uploadIconOk = 0;
}
// Check if $uploadIconOk is set to 0 by an error
if ($uploadIconOk == 0) {
	echo "Sorry, your file was not uploaded.\r\n";
	// if everything is ok, try to upload file
} else {
	if (move_uploaded_file($_FILES["iconToUpload"]["tmp_name"], "$icons_dir/$newfilename")) {
		echo "The file ". basename( $_FILES["iconToUpload"]["name"]). " has been uploaded.\r\n";
	} else {
		echo "Sorry, there was an error uploading your file.\r\n";
	}
}

$dateTime = date('Y-m-d H:i:s');

//check version so user can update for now. and then append the version number to all uploads
$checkIfPresent = $mysqli->query("SELECT 1 FROM fits WHERE `FILEPATH` = '$newtreename' AND `VERSION` = '$version'");
if($checkIfPresent && $checkIfPresent->num_rows > 0) {
	//probably delete the previous version
	echo "Already uploaded this tree, will not upload again.\r\n";
	$jsonResponse = array(
		"result" => "NG:Duplicate",
		"date_created" => date("Y-m-d-h-i-s")
	);
} else {
	$resultQuery = $mysqli->query("INSERT INTO fits (FILENAME, FILEPATH, UPLOADER, DESCRIPTION, ICON, DATEUPLOADED, YOUTUBELINK, VERSION) VALUES ('$treeTitle', '$newtreename', '$uploader', '$description', '$newfilename', '$dateTime', '$youtubeLink', '$version')");

	if($resultQuery){
		$jsonResponse = array(
			"result" => "OK",
			"date_created" => date("Y-m-d-h-i-s")
		);
	} else {
		$jsonResponse = array(
			"result" => "NG:Fail DB",
			"date_created" => date("Y-m-d-h-i-s")
		);
	}

}
			echo json_encode($jsonResponse);
?>