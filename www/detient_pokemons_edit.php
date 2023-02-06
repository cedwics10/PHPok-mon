<?php
require "../include/inc_config.php";
//applique la fonction mysqli_real_escape_string (protection contre l'injection SQL) à tous les élements de $_POST
$_POST = array_map("mres", $_POST);
extract($_POST);

if (isset($btsubmit)) {
    //si reception de données du formulaire
    if ($det_id==0) 
        //création d'un enregistrement
        $sql="insert into detient_pokemons (det_id,det_dresseur,det_pokemon,det_niveau) values (null,'$det_dresseur','$det_pokemon','$det_niveau')";
    else
        //maj d'un enregistrement
        $sql = "update detient_pokemons set det_dresseur='$det_dresseur',det_pokemon='$det_pokemon',det_niveau='$det_niveau' where det_id=$det_id";

    //exécution de la requete insert/update puis redirection
    if (mysqli_query($link, $sql))
        header("location:detient_pokemons_list.php");
    else
        echo mysqli_error($link);
        
} else {
    //récupération de l'identifiant de l'enregistrement à éditer
    $id = intval($_GET["id"]);
    if ($id > 0) {
        //edition d'un enregistrement existant
        $sql = "select * from detient_pokemons where det_id=$id";
        $resultat = mysqli_query($link, $sql);
        $ligne = mysqli_fetch_assoc($resultat);
        if ($ligne === false)
            echo mysqli_error($link);
        //applique lafonction htmlentities (protection contre l'injectrion javascript/HTML) à toutes les valeurs
        $ligne=array_map("mhe",$ligne);
        extract($ligne);
    } else {
        //création d'un nouvel enregistrement
        $det_id=0;
        $det_dresseur='';$det_pokemon='';$det_niveau='';
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
        <h2>detient_pokemons : edition</h2>
        <form method="post">
            <input type="hidden" name="det_id" value="<?= $det_id ?>">
            <p>
                <label>det_id</label> : <?= $det_id ?>
            </p>
            <p>
<label for='det_dresseur'>det_dresseur</label>
<input type='text' name='det_dresseur' id='det_dresseur' value='<?= $det_dresseur ?>'>
</p>

<p>
<label for='det_pokemon'>det_pokemon</label>
<input type='text' name='det_pokemon' id='det_pokemon' value='<?= $det_pokemon ?>'>
</p>

<p>
<label for='det_niveau'>det_niveau</label>
<input type='text' name='det_niveau' id='det_niveau' value='<?= $det_niveau ?>'>
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