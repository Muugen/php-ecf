<?php
require_once('security.inc');
require_once('../connect.php');
$error = "";

$sql = "SELECT id_c, nom FROM categories";
$res = mysqli_query($conn, $sql);

if(isset($_GET['id']) && $_GET['id'] <= 1000){
    $id = (int)htmlspecialchars(addslashes($_GET['id']));
    $sql = "SELECT * FROM articles a
            INNER JOIN categories c
            ON a.id_categories = c.id_c
            WHERE a.id = '$id'";
    $result = mysqli_query($conn, $sql);
    if(mysqli_num_rows($result) > 0){
        $data = mysqli_fetch_assoc($result);
    }
}

if(isset($_POST['soumis'])){
    if(isset($_POST['titre']) && strlen($_POST['titre']) <= 50){
        $id_a = trim(htmlspecialchars(addslashes($_POST['id'])));
        $titre = trim(htmlspecialchars(addslashes($_POST['titre'])));
        $auteur = trim(htmlspecialchars(addslashes($_POST['auteur'])));
        $id_categories = trim(htmlspecialchars(addslashes($_POST['categories'])));
        $description = trim(htmlspecialchars(addslashes($_POST['desc'])));
        $images = $_FILES['images']['name'];

        $destination = "../assets/images/";
        move_uploaded_file($_FILES['images']['tmp_name'], $destination.$images);

        if(empty($images)){
            $sql = "UPDATE articles SET titre = '$titre', auteur = '$auteur', id_categories = '$id_categories', description = '$description'
                    WHERE id = '$id_a'";
        }else{
            if(file_exists('../assets/images/'.$data['images'])){
                unlink('../assets/images/'.$data['images']);
            }
            $sql = "UPDATE articles SET titre = '$titre', auteur = '$auteur', id_categories = '$id_categories', images = '$immages', description = '$description'
                    WHERE id = '$id_a'";
        }
        $resultat = mysqli_query($conn, $sql);

        if($resultat){
            header('location:liste.php');
        }
        }else{
            $error = '<div class="alert alert-danger">Erreur d\'insertion</div>';
        }
    }

require_once('../partials/header.inc'); 
?>
<div class="offset-2 col-8">
<h1 class="bg-dark text-center text-white">Administration</h1>
<h2>Formulaire d'édition</h2>
    <?= $error; ?>
    <form action="<?=$_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?=$data['id'];?>">
    <div class="row">
    <div class="col-5">
        <label for="titre">Titre*</label>
        <input type="text" class="form-control" id="titre" name="titre" value="<?=$data['titre'];?>" placeholder="Entrez votre titre svp" required>
    </div>
    <div class="col-5">
        <label for="auteur">Auteur*</label>
        <input type="text" class="form-control" id="auteur" name="auteur" value="<?=$data['auteur'];?>"placeholder="Entrez votre auteur svp" required>
    </div>
    <div class="col">
        <label for="categories">Categories*</label>
        <select class="form-select" id="categories" name="categories">
            <option value="<?=$data['id_categories'];?>"><?=$data['nom'];?></option>
            <?php while($rows = mysqli_fetch_assoc($res)){
                    if($data['id_categories'] !== $rows['id']){?>
                <option value=""><?=$rows['nom'];?></option>
            <?php }} ?>
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
        <textarea  class="form-control" id="desc" name="desc" rows="5" placeholder="Entrez la description svp"><?=$data['description'];?></textarea>
    </div>

    </div>
    <button type="submit" class="btn btn-success col-12" name="soumis" >Editer</button>
    </form>
</div>
<?php require_once('../partials/footerAdmin.inc');?>