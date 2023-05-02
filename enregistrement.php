<?php
require_once ('config/login.php');


/*try {
    $pdo = new PDO($attr,$user, $pass, $opts);
} catch (PDOException $e) {
    throw new PDOException($e->getMessage(), (int)$e->getCode());
}*/


if isset($date['date']){$date = $_POST['date'];}else{$date = null;} 
if isset($client['client']){$client = $_POST['client'];}else{$client = null;}
$departement = $_POST['dept'];
$deptCompl = $_POST['dept_compl'];
$reference = $_POST['reference'];
$metres = $_POST['metre'];
if isset($_POST['pal6']){$pal6 = $_POST['pal6'];}else{$pal6 = null;}
$pal5 = $_POST['pal5'];
$pal4 = $_POST['pal4'];	
$pal3 = $_POST['pal3'];
$pal2 = $_POST['pal2'];
$pal1 = $_POST['pal1'];
$poids = $_POST['poids'];
$dateEnlevement = $_POST['date-enlev'];
$dateLivraison = $_POST['date-liv'];O
$arretSupp = $_POST['arret-sup'];
$prix = $_POST['prix'];
$compta = $_POST['compta'];
$transporteur = $_POST['transporteur'];
$agence = $_POST['agence'];
$choix = $_POST['choix'];
$problemes = $_POST['problemes'];

$requete ="insert into transports (`date`, `clients`, `departement`, `departement_comp`, `reference`, `metres`, `pal-6`, `pal-5`, `pal-4`, `pal-3`, `pal-2`, `pal-1`, `poids`, `date-enlevement`, `date-livraison`, `arret-supp`, `prix`, `compta`, `transporteur-retenu`, `agence-RZ-concernee`, `raison -du-choix`, `probleme-rencontres`) 
VALUES ('$date', '$client', '$departement', '$dept_comp', '$reference', '$metres', '$pal6', '$pal5', '$pal4', '$pal3', '$pal2', '$pal1', '$poids', '$dateEnlevement', '$dateLivraison', '$arretSupp','$prix', '$compta', '$transporteur', '$agence', '$choix', '$problemes')";
echo $requete;

mysqli_query($dbrz, $requete);

?>