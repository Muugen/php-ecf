<?php
require_once('connect.php');
$sql = "SELECT * FROM articles a
        INNER JOIN categories c
        ON a.id_categories = c.id_c";

$result = mysqli_query($conn, $sql);

function trDate($date){
    $dateArray = (explode("-",substr(($date),0,10)));
    $dateIns = $dateArray[2]."/".$dateArray[1]."/".$dateArray[0];
    return $dateIns;
}
?>
<?php require_once('partials/header.inc');?>
<div class="container">
    <div class="bg-ligth text-center p-5">
        <h1>Articles</h1>
        <p>Articles contenant l'actualités.</p>
    </div>

    <div>
        <div class="row row-cols-1 row-cols-md-3 g-4 mt-2">
            <?php while($rows = mysqli_fetch_assoc($result)){ ?>
                <div class="col">
                    <div class="card">
                        <img src="assets/images/<?=$rows['images'];?>" class="card-img-top" alt="..." height="300">
                        <div class="card-body">
                            <h5 class="card-title text-center">Articles N°: <?=$rows['id'];?></h5>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Titre: <?=$rows['titre'];?></li>
                                <li class="list-group-item">Publié par: <?=$rows['auteur'];?></li>
                                <li class="list-group-item">Catégorie: <?=$rows['nom'];?></li>
                                <li class="list-group-item">Publié le: <?=trDate($rows['date_created']);?></li>
                            </ul>
                            <hr>
                            <p class="card-text"><?=$rows['description'];?></p>
                        </div>
                    </div>
                </div>
            <?php } ?>   
        </div>
    </div>
</div>
<?php require_once('partials/footer.inc');?>