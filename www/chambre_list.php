<?php
//affiche la liste des enregistrements de la table AVION
require "../include/inc_config.php";
$sql="select * from chambre";
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
        <h2>chambre</h2>     
        <p><a href="chambre_edit.php?id=0">Créer un enregistrement</a></p> 
        <table>
            <thead>
                <tr>
                    <th>cha_id</th>
<th>cha_numero</th>
<th>cha_statut</th>
<th>cha_surface</th>
<th>cha_typelit1</th>
<th>cha_typelit2</th>
<th>cha_description</th>
<th>cha_jacuzzi</th>
<th>cha_balcon</th>
<th>cha_wifi</th>
<th>cha_minibar</th>
<th>cha_coffre</th>
<th>cha_vue</th>
<th>cha_chcategorie</th>

                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <?php
            foreach($data as $i => $ligne) {
                $ligne=array_map("mhe",$ligne);
                extract($ligne); 
                $id=$ligne["cha_id"];
                ?>
                <tr>
                <td><?=$cha_id?></td>
<td><?=$cha_numero?></td>
<td><?=$cha_statut?></td>
<td><?=$cha_surface?></td>
<td><?=$cha_typelit1?></td>
<td><?=$cha_typelit2?></td>
<td><?=$cha_description?></td>
<td><?=$cha_jacuzzi?></td>
<td><?=$cha_balcon?></td>
<td><?=$cha_wifi?></td>
<td><?=$cha_minibar?></td>
<td><?=$cha_coffre?></td>
<td><?=$cha_vue?></td>
<td><?=$cha_chcategorie?></td>

                <td><a href='chambre_edit.php?id=<?=$id?>'>modifier</a></td>
                <td><a href='chambre_delete.php?id=<?=$id?>'>supprimer</a></td>
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