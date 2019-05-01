<?php
	require_once 'utils.php';

	header('Content-Type: text/xml');

	if(!empty($_GET["userid"])) {

		$response = "<response>";
		$response .= "<responseCode>200</responseCode>
						  <responseMessage>illegal access to the page</responseMessage>";
		$users = array();

		$idUtente = htmlspecialchars(trim($_GET["userid"]));

		// get the most recent position of all the users
		$query = "SELECT U.IdUtente, U.NomeUtente, P.Latitudine, P.Longitudine, P.Indirizzo
				  FROM raggruppamento_posizioni RP, posizione P, utenti U
				  WHERE P.IdPosizione = RP.IdPosizione
				  AND U.IdUtente = RP.IdUtente
				  AND Timestamp IN (SELECT MAX(Timestamp)
			  						 FROM raggruppamento_posizioni
								 	 GROUP BY IdUtente)
				  GROUP BY RP.IdUtente
				  HAVING RP.IdUtente != $idUtente";

		$qres = mysqli_query($conn, $query);

		//echo mysqli_error($conn);

		for($i = 0; $row = mysqli_fetch_assoc($qres); $i++) {

			$response .= "<rilevation index='".$i."'>".
							"<userId>".$row["IdUtente"]."</userId>".
							"<username>".$row["NomeUtente"]."</username>".
						 	"<streetAddress>".$row["Indirizzo"]."</streetAddress>".
						 	"<location>".
						 		"<latitude>".$row["Latitudine"]."</latitude>".
						 		"<longitude>".$row["Longitudine"]."</longitude>".
						 	"</location>".
						 "</rilevation>";
		}

		$response .= "</response>";
		echo $response;
	}
	else {
		echo "<response>
				<responseCode>403</responseCode>
				<responseMessage>illegal access to the page</responseMessage>
			  </response>";
	}

?>
