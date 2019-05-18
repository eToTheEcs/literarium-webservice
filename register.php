<?php

    require_once 'utils.php';

	header('Content-Type: text/xml');

    if(!empty($_GET["username"]) && !empty($_GET["grusername"]) && !empty($_GET["password"])) {

        $nomeUtente = htmlspecialchars(trim($_GET["username"]));
        $password = htmlspecialchars(trim($_GET["password"]));
		$nomeUtenteGr = htmlspecialchars(trim($_GET["grusername"]));

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

		$userToken = bin2hex(random_bytes(128));

        $query = "INSERT INTO utenti (NomeUtente, grNomeUtente, Password, Token)
                  VALUES ('$nomeUtente', '$nomeUtenteGr', '$hashedPassword', '$userToken')";

        $qres = mysqli_query($conn, $query);

        $numRecords = mysqli_affected_rows($conn);

		if($numRecords == 1) {

	        echo "<response>
					<responseCode>200</responseCode>
					<responseMessage>user correctly inserted</responseMessage>
	                <numRecords>$numRecords</numRecords>
				  </response>";
		}
		else {

			echo "<response>
					<responseCode>500</responseCode>
					<responseMessage>user already exists</responseMessage>
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
