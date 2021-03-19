<?php

require_once('security.inc');
require_once('../connect.php');
$error = "";
$sql = "SELECT id_c, nom FROM categories";
$res = mysqli_query($conn, $sql);

if(isset($_POST['soumis'])){
    if(isset($_POST['titre']) && strlen($_POST['titre'])<=20){
        $titre = trim(htmlspecialchars(addslashes($_POST['titre'])));
        $auteur = trim(htmlspecialchars(addslashes($_POST['auteur'])));
        $id_c = trim(htmlspecialchars(addslashes($_POST['categories'])));
        $description= trim(htmlspecialchars(addslashes($_POST['desc'])));
        $image = $_FILES['images']['name'];

        $destination ="../assets/images/";
        move_uploaded_file($_FILES['images']['tmp_name'], $destination.$image);

        $sql2= "INSERT INTO articles(titre, auteur, id_categories, description, images)
                VALUES('$titre','$auteur', '$id_c','$description', '$image')";
        $result = mysqli_query($conn, $sql2);
        if(mysqli_insert_id($conn) > 0){
            header('location:liste.php');
        }else{
            $error = '<div class="alert alert-danger">Erreur d\'insertion</div>';
        }
        
    }
}

require_once('../partials/header.inc'); 
?>
<div class="offset-2 col-8">
<h1 class="bg-dark text-center text-white">Administration</h1>
<h2>Ajouté un Article</h2>
    <?= $error; ?>
    <form action="<?=$_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?=$data['id'];?>">
    <div class="row">
    <div class="col-5">
        <label for="titre">Titre*</label>
        <input type="text" class="form-control" id="titre" name="titre" placeholder="Entrez votre titre svp" required>
    </div>
    <div class="col-5">
        <label for="auteur">Auteur*</label>
        <input type="text" class="form-control" id="auteur" name="auteur" placeholder="Entrez votre auteur svp" required>
    </div>
    <div class="col">
        <label for="categories">Categories*</label>
        <select class="form-select" id="categories" name="categories">
        <option>Choisir</option>
        <?php while($rows = mysqli_fetch_assoc($res)){ ?>
            <option value="<?=$rows['id_c']; ?>"><?=$rows['nom']; ?></option>
        <?php } ?>
        </select>
    </div>
    </div>
    <div class="row">
    <div class="col">
        <label for="images">Photo</label>
        <input type="file" class="form-control" id="images" name="images">
        <img src="../assets/images/<?=$data['images'];?>" width="50" alt="">
    </div>
    </div>
    <div class="row">
    <div class="col mb-2">
        <label for="desc">Description</label>
        <textarea  class="form-control" id="desc" name="desc" rows="5" placeholder="Entrez la description svp"></textarea>
    </div>

    </div>
    <button type="submit" class="btn btn-success col-12" name="soumis" >Ajouter</button>
    </form>
</div>
<?php require_once('../partials/footerAdmin.inc');?>