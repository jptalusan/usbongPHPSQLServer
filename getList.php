<?php

	// connect to the database
	header('Content-Type: application/json');
	include('usbong-fits-connect.php');
        if (!$mysqli->set_charset("utf8")) {
            //printf("Error loading character set utf8: %s\n", $mysqli->error);
        } else {
            //printf("Current character set: %s\n", $mysqli->character_set_name());
        }
	
	if($_SERVER['SERVER_ADDR'] == "::1") {
		$address = "localhost";
	} else {
		$address = $_SERVER['SERVER_ADDR'];
	}
	
	// get the records from the database
	if ($result = $mysqli->query("SELECT * FROM fits"))
	{
		// display records if there are records to display
		if ($result->num_rows > 0)
		{
			$responses = array();
		
			while ($row = $result->fetch_object())
			{
				
				$jsonResponse = array(
						"FILENAME" => $row->FILENAME,
						"FILEPATH" => $row->FILEPATH,
						"RATING" => $row->RATING,
						"UPLOADER" => $row->UPLOADER,
						"DESCRIPTION" => $row->DESCRIPTION,
						"ICON" => $row->ICON,
						"YOUTUBELINK" => $row->YOUTUBELINK,
						"DATEUPLOADED" => $row->DATEUPLOADED,
						"DOWNLOADCOUNT" => $row->DOWNLOADCOUNT
					);
				$responses[] = $jsonResponse;
				
			}
			echo json_encode($responses);
		}
		// if there are no records in the database, display an alert message
		else
		{
				// echo "No results to display!";
		}
	}
	// show an error if there is an issue with the database query
	else
	{
			// echo "Error: " . $mysqli->error;
	}
	
	// close database connection
	$mysqli->close();

?>
	