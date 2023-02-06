<?php
require "../include/inc_config.php";
//applique la fonction mysqli_real_escape_string (protection contre l'injection SQL) à tous les élements de $_POST
$_POST = array_map("mres", $_POST);
extract($_POST);

if (isset($btsubmit)) {
    //si reception de données du formulaire
    if ($est_id==0) 
        //création d'un enregistrement
        $sql="insert into est_type (est_id,est_pok_id,est_type_id) values (null,'$est_pok_id','$est_type_id')";
    else
        //maj d'un enregistrement
        $sql = "update est_type set est_pok_id='$est_pok_id',est_type_id='$est_type_id' where est_id=$est_id";

    //exécution de la requete insert/update puis redirection
    if (mysqli_query($link, $sql))
        header("location:est_type_list.php");
    else
        echo mysqli_error($link);
        
} else {
    //récupération de l'identifiant de l'enregistrement à éditer
    $id = intval($_GET["id"]);
    if ($id > 0) {
        //edition d'un enregistrement existant
        $sql = "select * from est_type where est_id=$id";
        $resultat = mysqli_query($link, $sql);
        $ligne = mysqli_fetch_assoc($resultat);
        if ($ligne === false)
            echo mysqli_error($link);
        //applique lafonction htmlentities (protection contre l'injectrion javascript/HTML) à toutes les valeurs
        $ligne=array_map("mhe",$ligne);
        extract($ligne);
    } else {
        //création d'un nouvel enregistrement
        $est_id=0;
        $est_pok_id='';$est_type_id='';
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
        <h2>est_type : edition</h2>
        <form method="post">
            <input type="hidden" name="est_id" value="<?= $est_id ?>">
            <p>
                <label>est_id</label> : <?= $est_id ?>
            </p>
            <p>
<label for='est_pok_id'>est_pok_id</label>
<input type='text' name='est_pok_id' id='est_pok_id' value='<?= $est_pok_id ?>'>
</p>

<p>
<label for='est_type_id'>est_type_id</label>
<input type='text' name='est_type_id' id='est_type_id' value='<?= $est_type_id ?>'>
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