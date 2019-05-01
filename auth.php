<?php

    require_once 'utils.php';

	header('Content-Type: text/xml');

    if(!empty($_GET["nomeutente"]) && !empty($_GET["password"])) {

        $nomeUtente = htmlspecialchars(trim($_GET["nomeutente"]));
        $password = htmlspecialchars(trim($_GET["password"]));

        $query = "SELECT *
				  FROM utenti
				  WHERE NomeUtente = '$nomeUtente'";

        $qres = mysqli_query($conn, $query);

        $numRecords = mysqli_affected_rows($conn);

		$row = mysqli_fetch_assoc($qres);
		$hashedPassword = $row["Password"];
		$userToken = $row["Token"];
		$userId = $row["IdUtente"];

		if(password_verify($password, $hashedPassword)) {

	        echo "<response>
					<responseCode>200</responseCode>
					<responseMessage>user authenticated</responseMessage>
					<userId>".$userId."</userId>
					<authToken>$userToken</authToken>
	                <numRecords>$numRecords</numRecords>
				  </response>";
	  	}
		else {

			echo "<response>
					<responseCode>500</responseCode>
					<responseMessage>user not authenticated</responseMessage>
	                <numRecords>$numRecords</numRecords>
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
