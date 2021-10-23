<?php

include_once 'conexion.php';

$dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);

$data_start = str_replace('/', '-', $dados['start']);
$data_start_conv = date("Y-m-d H:i:s", strtotime($data_start));

$data_end = str_replace('/', '-', $dados['end']);
$data_end_conv = date("Y-m-d H:i:s", strtotime($data_end));

$query_event = "INSERT INTO events (title, descripcion, color, start, end) VALUES (:title, :descripcion, :color, :start, :end)";

$insert_event = $conn->prepare($query_event);
$insert_event->bindParam(':title', $dados['title']);
$insert_event->bindParam(':descripcion', $dados['descripcion']);
$insert_event->bindParam(':color', $dados['color']);
$insert_event->bindParam(':start', $data_start_conv);
$insert_event->bindParam(':end', $data_end_conv);

if ($insert_event->execute()) {
    $retorna = ['sit' => true, 'msg' => '<div class="alert alert-success" role="alert">Evento guardado exitosamente!</div>'];
    $_SESSION['msg'] = '<div class="alert alert-success" role="alert">Evento guardado exitosamente!</div>';
} else {
    $retorna = ['sit' => false, 'msg' => '<div class="alert alert-danger" role="alert">Error: El evento no pudo ser guardado!</div>'];
}


header('Content-Type: application/json');
echo json_encode($retorna);
