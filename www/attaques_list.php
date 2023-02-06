<?php
//affiche la liste des enregistrements de la table AVION
require "../include/inc_config.php";
$sql="select * from attaques";
//envoie la requête au serveur mysql, et récupère un pointeur sur le jeu de données
$resultat=mysqli_query($link,$sql);
//Charge toutes les données dans un tableau à 2 dimsensions
$data=mysqli_fetch_all($resultat,MYSQLI_ASSOC);

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
        <h2>attaques</h2>     
        <p><a href="attaques_edit.php?id=0">Créer un enregistrement</a></p> 
        <table>
            <thead>
                <tr>
                    <th>att_id</th>
<th>att_libelle</th>
<th>att_type_id</th>
<th>att_pp</th>
<th>att_puissance</th>
<th>att_precision</th>

                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <?php
            foreach($data as $i => $ligne) {
                $ligne=array_map("mhe",$ligne);
                extract($ligne); 
                $id=$ligne["att_id"];
                ?>
                <tr>
                <td><?=$att_id?></td>
<td><?=$att_libelle?></td>
<td><?=$att_type_id?></td>
<td><?=$att_pp?></td>
<td><?=$att_puissance?></td>
<td><?=$att_precision?></td>

                <td><a href='attaques_edit.php?id=<?=$id?>'>modifier</a></td>
                <td><a href='attaques_delete.php?id=<?=$id?>'>supprimer</a></td>
                </tr>
            <?php } //fin foreach ?>
        </table>
    </main>
    <!-- pied de page -->
    <footer>
        <?php require "../include/inc_footer.php"; ?>
    </footer>

</body>
</html>