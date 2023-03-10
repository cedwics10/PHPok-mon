<?php
require "../include/inc_config.php";
//applique la fonction mysqli_real_escape_string (protection contre l'injection SQL) à tous les élements de $_POST
$_POST = array_map("mres", $_POST);
extract($_POST);

if (isset($btsubmit)) {
    //si reception de données du formulaire
    if ($com_id==0) 
        //création d'un enregistrement
        $sql="insert into commander (com_id,com_quantite,com_services,com_reservation) values (null,'$com_quantite','$com_services','$com_reservation')";
    else
        //maj d'un enregistrement
        $sql = "update commander set com_quantite='$com_quantite',com_services='$com_services',com_reservation='$com_reservation' where com_id=$com_id";

    //exécution de la requete insert/update puis redirection
    if (mysqli_query($link, $sql))
        header("location:commander_list.php");
    else
        echo mysqli_error($link);
        
} else {
    //récupération de l'identifiant de l'enregistrement à éditer
    $id = intval($_GET["id"]);
    if ($id > 0) {
        //edition d'un enregistrement existant
        $sql = "select * from commander where com_id=$id";
        $resultat = mysqli_query($link, $sql);
        $ligne = mysqli_fetch_assoc($resultat);
        if ($ligne === false)
            echo mysqli_error($link);
        //applique lafonction htmlentities (protection contre l'injectrion javascript/HTML) à toutes les valeurs
        $ligne=array_map("mhe",$ligne);
        extract($ligne);
    } else {
        //création d'un nouvel enregistrement
        $com_id=0;
        $com_quantite='';$com_services='';$com_reservation='';
    }
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <?php require "../include/inc_head.php"; ?>
</head>

<body>
    <!-- lien de navigation pour lecteur d'écran -->
    <a href="#main" class="sr-only">aller au contenu principal</a>
    <!-- entete de page -->
    <header>
        <?php require "../include/inc_header.php"; ?>
    </header>
    <!-- menu de navigation -->
    <nav>
        <?php require "../include/inc_menu.php"; ?>
    </nav>
    <!-- contenu principal -->
    <main id="main">
        <h2>commander : edition</h2>
        <form method="post">
            <input type="hidden" name="com_id" value="<?= $com_id ?>">
            <p>
                <label>com_id</label> : <?= $com_id ?>
            </p>
            <p>
<label for='com_quantite'>com_quantite</label>
<input type='text' name='com_quantite' id='com_quantite' value='<?= $com_quantite ?>'>
</p>

<p>
<label for='com_services'>com_services</label>
<input type='text' name='com_services' id='com_services' value='<?= $com_services ?>'>
</p>

<p>
<label for='com_reservation'>com_reservation</label>
<input type='text' name='com_reservation' id='com_reservation' value='<?= $com_reservation ?>'>
</p>


            <p>
                <input type="submit" name="btsubmit" value="Envoyer">
            </p>
        </form>
    </main>
    <!-- pied de page -->
    <footer>
        <?php require "../include/inc_footer.php"; ?>
    </footer>

</body>

</html>