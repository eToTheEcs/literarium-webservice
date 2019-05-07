<?php
	require_once 'utils.php';

	header('Content-Type: text/xml');

	if(!empty($_GET["token"]) && !empty($_GET["userid"]) && !empty($_GET["receiverid"]) && !empty($_GET["bookid"])) {

		$userid = htmlspecialchars(trim($_GET["userid"]));
		$token  = trim($_GET["token"]);
		$bookid = htmlspecialchars(trim($_GET["bookid"]));
		$receiverid = htmlspecialchars(trim($_GET["receiverid"]));

		// check if user exists
		$query = "SELECT COUNT(*) as nUtenti
				  FROM utenti
				  WHERE IdUtente = $userid";
		$qres = mysqli_query($conn, $query);
		$nUtenti = mysqli_fetch_assoc($qres);

		if($nUtenti == 0) {
			echo "<response>
					<responseCode>500</responseCode>
					<responseMessage>no user found</responseMessage>
				  </response>";
		}
		else {

			// check if user and token correspond
			$query = "SELECT *
					  FROM utenti
					  WHERE token = $token AND IdUtente = $userid";
			$qres = mysqli_query($conn, $query);

			if(mysqli_affected_rows($conn) == 0) {

				echo "<response>
						<responseCode>500</responseCode>
						<responseMessage>wrong token for given user</responseMessage>
					  </response>";
			}
			else {

				// all is OK
				$query = "INSERT INTO condivisioni (IdLibro, IdUtente)
						  VALUES ($bookid, $receiverid)";
				$qres = mysqli_query($conn, $query);

				echo "<response>
						<responseCode>200</responseCode>
						<responseMessage>book correctly shared</responseMessage>
					  </response>";
			}
		}

	}
	else {
		echo "<response>
				<responseCode>403</responseCode>
				<responseMessage>illegal access to the page</responseMessage>
			  </response>";
	}

?>
