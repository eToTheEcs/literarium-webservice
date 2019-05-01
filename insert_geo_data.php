<?php
	require_once 'utils.php';

	header('Content-Type: text/xml');

	if(!empty($_GET["userid"]) && !empty($_GET["longitudine"]) && !empty($_GET["latitudine"])) {

		$idUtente = filter_var($_GET["userid"], FILTER_SANITIZE_STRING);
		$latitudine = round(filter_var($_GET["latitudine"], FILTER_VALIDATE_FLOAT), 4);
		$longitudine = round(filter_var($_GET["longitudine"], FILTER_VALIDATE_FLOAT), 4);
		if(!empty($_GET["indirizzo"]))
			$indirizzo = filter_var($_GET["indirizzo"], FILTER_SANITIZE_STRING);


		$verifyQuery = "SELECT IdPosizione
						FROM posizione
						WHERE ABS(Latitudine-$latitudine)<=1e-4 AND ABS(Longitudine-$longitudine)<=1e-4";

		$qres = mysqli_query($conn, $verifyQuery);

		$row = mysqli_fetch_assoc($qres);

		$numRecords = mysqli_affected_rows($conn);

		// the location is not present...
		if($numRecords == 0) {

			$query = "INSERT INTO posizione(Latitudine, Longitudine, Indirizzo)
				  	  VALUES ($latitudine, $longitudine, '$indirizzo')";
			mysqli_query($conn, $query);
			//echo mysqli_error($conn);
			$idPosizione = mysqli_insert_id($conn);
			//echo $idPosizione."<br>";
		}
		else {

			$idPosizione = $row["IdPosizione"];
		}

		$query = "INSERT INTO storico_posizioni (IdPosizione, IdUtente, Timestamp)
				  VALUES ($idPosizione, $idUtente, NOW())";
		mysqli_query($conn, $query);

		$newRecords = mysqli_affected_rows($conn);

		$error = mysqli_error($conn);

  	  	echo "<response>
				<responseCode>200</responseCode>
				<responseMessage>OK</responseMessage>
				<error>$error</error>
				<numRecords>$numRecords</numRecords>
				<newRecords>$newRecords</newRecords>
	  		</response>";
	}
	else {
		echo "<response>
				<responseCode>403</responseCode>
				<responseMessage>illegal access to the page</responseMessage>
			  </response>";
	}

?>
