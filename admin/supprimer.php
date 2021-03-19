<?php
require_once('security.inc');
require_once('../connect.php');

if(isset($_GET['id']) && $_GET['id'] < 1000){
    $id = (int)htmlspecialchars(addslashes($_GET['id'])); // on recup l'id qui passe en parametre

    $req = "SELECT images FROM articles WHERE id =".$id; // on va chercher le num de l'image avec l'id
    $res = mysqli_query($conn, $req);
    $data = mysqli_fetch_assoc($res); // on recupere l'image avec le fetch

    $sql = "DELETE FROM articles WHERE id = ".$id;

    $result = mysqli_query($conn, $sql);

    if(mysqli_affected_rows($conn) > 0){
        copy('../assets/images/'.$data['images'], '../assets/archives/'.$data['images']); // on copie le fichier supprimé dans archives
        unlink('../assets/images'.$data['images']); 
        header('location:liste.php'); // on redirige vers la liste
    }else{
        echo '<div class=""> Erreur de suppression </div>';
    }

}

?>