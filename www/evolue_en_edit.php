<?php
require "../include/inc_config.php";
//applique la fonction mysqli_real_escape_string (protection contre l'injection SQL) à tous les élements de $_POST
$_POST = array_map("mres", $_POST);
extract($_POST);

if (isset($btsubmit)) {
    //si reception de données du formulaire
    if ($evo_id==0) 
        //création d'un enregistrement
        $sql="insert into evolue_en (evo_id,evo_base_id,evo_poke_id,evo_niveau) values (null,'$evo_base_id','$evo_poke_id','$evo_niveau')";
    else
        //maj d'un enregistrement
        $sql = "update evolue_en set evo_base_id='$evo_base_id',evo_poke_id='$evo_poke_id',evo_niveau='$evo_niveau' where evo_id=$evo_id";

    //exécution de la requete insert/update puis redirection
    if (mysqli_query($link, $sql))
        header("location:evolue_en_list.php");
    else
        echo mysqli_error($link);
        
} else {
    //récupération de l'identifiant de l'enregistrement à éditer
    $id = intval($_GET["id"]);
    if ($id > 0) {
        //edition d'un enregistrement existant
        $sql = "select * from evolue_en where evo_id=$id";
        $resultat = mysqli_query($link, $sql);
        $ligne = mysqli_fetch_assoc($resultat);
        if ($ligne === false)
            echo mysqli_error($link);
        //applique lafonction htmlentities (protection contre l'injectrion javascript/HTML) à toutes les valeurs
        $ligne=array_map("mhe",$ligne);
        extract($ligne);
    } else {
        //création d'un nouvel enregistrement
        $evo_id=0;
        $evo_base_id='';$evo_poke_id='';$evo_niveau='';
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
        <h2>evolue_en : edition</h2>
        <form method="post">
            <input type="hidden" name="evo_id" value="<?= $evo_id ?>">
            <p>
                <label>evo_id</label> : <?= $evo_id ?>
            </p>
            <p>
<label for='evo_base_id'>evo_base_id</label>
<input type='text' name='evo_base_id' id='evo_base_id' value='<?= $evo_base_id ?>'>
</p>

<p>
<label for='evo_poke_id'>evo_poke_id</label>
<input type='text' name='evo_poke_id' id='evo_poke_id' value='<?= $evo_poke_id ?>'>
</p>

<p>
<label for='evo_niveau'>evo_niveau</label>
<input type='text' name='evo_niveau' id='evo_niveau' value='<?= $evo_niveau ?>'>
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