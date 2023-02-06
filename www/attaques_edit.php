<?php
require "../include/inc_config.php";
//applique la fonction mysqli_real_escape_string (protection contre l'injection SQL) à tous les élements de $_POST
$_POST = array_map("mres", $_POST);
extract($_POST);

if (isset($btsubmit)) {
    //si reception de données du formulaire
    if ($att_id==0) 
        //création d'un enregistrement
        $sql="insert into attaques (att_id,att_libelle,att_type_id,att_pp,att_puissance,att_precision) values (null,'$att_libelle','$att_type_id','$att_pp','$att_puissance','$att_precision')";
    else
        //maj d'un enregistrement
        $sql = "update attaques set att_libelle='$att_libelle',att_type_id='$att_type_id',att_pp='$att_pp',att_puissance='$att_puissance',att_precision='$att_precision' where att_id=$att_id";

    //exécution de la requete insert/update puis redirection
    if (mysqli_query($link, $sql))
        header("location:attaques_list.php");
    else
        echo mysqli_error($link);
        
} else {
    //récupération de l'identifiant de l'enregistrement à éditer
    $id = intval($_GET["id"]);
    if ($id > 0) {
        //edition d'un enregistrement existant
        $sql = "select * from attaques where att_id=$id";
        $resultat = mysqli_query($link, $sql);
        $ligne = mysqli_fetch_assoc($resultat);
        if ($ligne === false)
            echo mysqli_error($link);
        //applique lafonction htmlentities (protection contre l'injectrion javascript/HTML) à toutes les valeurs
        $ligne=array_map("mhe",$ligne);
        extract($ligne);
    } else {
        //création d'un nouvel enregistrement
        $att_id=0;
        $att_libelle='';$att_type_id='';$att_pp='';$att_puissance='';$att_precision='';
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
        <h2>attaques : edition</h2>
        <form method="post">
            <input type="hidden" name="att_id" value="<?= $att_id ?>">
            <p>
                <label>att_id</label> : <?= $att_id ?>
            </p>
            <p>
<label for='att_libelle'>att_libelle</label>
<input type='text' name='att_libelle' id='att_libelle' value='<?= $att_libelle ?>'>
</p>

<p>
<label for='att_type_id'>att_type_id</label>
<input type='text' name='att_type_id' id='att_type_id' value='<?= $att_type_id ?>'>
</p>

<p>
<label for='att_pp'>att_pp</label>
<input type='text' name='att_pp' id='att_pp' value='<?= $att_pp ?>'>
</p>

<p>
<label for='att_puissance'>att_puissance</label>
<input type='text' name='att_puissance' id='att_puissance' value='<?= $att_puissance ?>'>
</p>

<p>
<label for='att_precision'>att_precision</label>
<input type='text' name='att_precision' id='att_precision' value='<?= $att_precision ?>'>
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