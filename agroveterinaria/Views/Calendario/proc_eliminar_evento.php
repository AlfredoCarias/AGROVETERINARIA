<?php


include_once 'conexion.php';

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);

if (!empty($id)) {
    $query_event = "DELETE FROM events WHERE id=:id";
    $delete_event = $conn->prepare($query_event);
    
    $delete_event->bindParam("id", $id);
    
    if($delete_event->execute()){
        $_SESSION['msg'] = '<div class="alert alert-success" role="alert">Evento Elminado Exitosamente!</div>';
        header("Location: calendario.php");
    }else{
        $_SESSION['msg'] = '<div class="alert alert-danger" role="alert">Error: El evento no fue elimado!</div>';
        header("Location: calendario.php");
    }
} else {
    $_SESSION['msg'] = '<div class="alert alert-danger" role="alert">Erro: El evento no fue elimado!</div>';
    header("Location: calendario.php");
}
