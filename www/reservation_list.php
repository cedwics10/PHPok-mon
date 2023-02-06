<?php
//affiche la liste des enregistrements de la table AVION
require "../include/inc_config.php";
$sql="select * from reservation";
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
        <h2>reservation</h2>     
        <p><a href="reservation_edit.php?id=0">Créer un enregistrement</a></p> 
        <table>
            <thead>
                <tr>
                    <th>res_id</th>
<th>res_date_creation</th>
<th>res_date_debut</th>
<th>res_date_maj</th>
<th>res_date_fin</th>
<th>res_etat</th>
<th>res_client</th>
<th>res_hotel</th>
<th>res_chambre</th>

                    <th>&nbsp;</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <?php
            foreach($data as $i => $ligne) {
                $ligne=array_map("mhe",$ligne);
                extract($ligne); 
                $id=$ligne["res_id"];
                ?>
                <tr>
                <td><?=$res_id?></td>
<td><?=$res_date_creation?></td>
<td><?=$res_date_debut?></td>
<td><?=$res_date_maj?></td>
<td><?=$res_date_fin?></td>
<td><?=$res_etat?></td>
<td><?=$res_client?></td>
<td><?=$res_hotel?></td>
<td><?=$res_chambre?></td>

                <td><a href='reservation_edit.php?id=<?=$id?>'>modifier</a></td>
                <td><a href='reservation_delete.php?id=<?=$id?>'>supprimer</a></td>
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