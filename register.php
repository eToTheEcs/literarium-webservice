<?php

    require_once 'utils.php';

	header('Content-Type: text/xml');

    if(!empty($_GET["nomeutente"]) && !empty($_GET["password"])) {

        $nomeUtente = htmlspecialchars(trim($_GET["nomeutente"]));
        $password = htmlspecialchars(trim($_GET["password"]));

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

		$userToken = bin2hex(random_bytes(128));

        $query = "INSERT INTO utenti (NomeUtente, Password, Token)
                  VALUES ('$nomeUtente', '$hashedPassword', '$userToken')";

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
