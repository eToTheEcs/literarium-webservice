<?php
	require_once 'utils.php';

	header('Content-Type: text/xml');

	if(!empty($_GET["token"]) && !empty($_GET["receiverid"]) && !empty($_GET["bookid"])) {

		$token  = trim($_GET["token"]);
		$bookid = htmlspecialchars(trim($_GET["bookid"]));
		$receiverid = htmlspecialchars(trim($_GET["receiverid"]));


		// check if user and token correspond
		$query = "SELECT *
				  FROM utenti
				  WHERE token = '$token'";
		$qres = mysqli_query($conn, $query);

		if(mysqli_affected_rows($conn) == 0) {

			echo "<response>
					<responseCode>403</responseCode>
					<responseMessage>unauthorized token</responseMessage>
				  </response>";
		}
		else {

			// all is OK
			$query = "DELETE
					  FROM condivisioni
					  WHERE IdLibro = $bookid AND IdUtente = $receiverid";
			$qres = mysqli_query($conn, $query);

			echo "<response>
					<responseCode>200</responseCode>
					<responseMessage>share correctly discarded</responseMessage>
				  </response>";
		}
	}
	else {
		echo "<response>
				<responseCode>403</responseCode>
				<responseMessage>illegal access to the page</responseMessage>
			  </response>";
	}

?>
