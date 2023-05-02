<?php
require_once ('config/login.php');

$requete = "SELECT * FROM transports";
$rs = mysqli_query($dbrz, $requete);


?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Rheinzink</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	
	<div class="en-tete">
		<img src="/public/rheinzink-logo.jpg alt="logo" height="100">
		<h1 class="h3 mb-3 fw-normal">Relevé transport</h1>
		<p id=mois></p>
	</div>
	<form action="enregistrement.php" method="post">
		<table class="table table-bordered">
	    	<tr>
				<th>DATE</th>
				<th>CLIENT</th>
				<th>DEPT</th>
				<th>DEPT COMPL</th>
				<th>REFERENCE</th>
				<th>METRES</th>
				<th>Pal 6</th>
				<th>Pal 5</th>
				<th>Pal 4</th>
				<th>Pal 3</th>
				<th>Pal 2</th>
				<th>Pal 1</th>
				<th>POIDS</th>
				<th>DATE ENLEVEMENT</th>
				<th>DATE LIVRAISON</th>
				<th>ARRET SUP</th>
				<th>PRIX</th>
				<th>COMPTA</th>
				<th>TRANSPORTEUR RETENU</th>
				<th>AGENCE CONCERNEE</th>
				<th>RAISON DU CHOIX</th>
				<th>PROBLEMES RENCONTRES</th>
			</tr>
			<tr>
				<th><input type="date" name="date" id="date"></th>
				<th><input type="text" name="client" id="clt" required></th>
				<th><input type="number" name="dept" id="dept" min="1" max="95"></th>
				<th><input type="number" name="dept-compl" id="dept_compl" min="1" max="95"></th>
				<th><input type="text" name="reference" id="ref"></th>
				<th><input type="number" name="metre" id="metre"></th>
				<th><input type="number" name="pal6" id="pal6" min="1" max="99"></th>
				<th><input type="number" name="pal5" id="pal5" min="1" max="99"></th>
				<th><input type="number" name="pal4" id="pal4" min="1" max="99"></th>
				<th><input type="number" name="pal3" id="pal3" min="1" max="99"></th>
				<th><input type="number" name="pal2" id="pal2" min="1" max="99"></th>
				<th><input type="number" name="pal1" id="pal1" min="1" max="99"></th>
				<th><input type="number" name="poids" id="poids"></th>
				<th><input type="date" name="date-enlev" id="date-enlev"></th>
				<th><input type="date" name="date-liv" id="date-liv"></th>
				<th><input type="number" name="arret-supp" id="arret-sup"></th>
				<th><input type="number" name="prix" id="prix" step="0.01"></th>
				<th><input type="number" name="compta" id="compta" step="0.01"></th>
				<th><input type="text" name="transporteur" id="transporteur"></th>
				<th><input list="agence-choix" name="agence" id="agence">
					<datalist id="agence-choix">
						<option value="Neulise">
						<option value="Lyon">
						<option value="Nante">
						<option value="Lille">
					</datalist></th>
				<th><textarea name="choix" id="choix" rows="5" cols="33"></textarea></th>
				<th><textarea name="problemes" id="problemes" rows="5" cols="33"></textarea></th>
			</tr>

			<?php
				while ($r = mysqli_fetch_assoc($rs)){
					echo "<tr><td>".$r['date']."</td><td>".$r['clients']."</td><td></td></tr>";				
				}
			?>
		</table>
		<input type="submit" value="Enregistrer" id="'save">
	</form>
	<script>
		let mois = new Date().toLocaleString('default', {month: 'long'});
		document.getElementById("mois").innerHTML = "Mois : " + mois;
	</script>
</body>

</html>
