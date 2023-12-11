<?php

require_once "../modelos/conexionBD.php"; 

if($_SERVER['REQUEST_METHOD'] == 'post'){
    $provincia = $_POST['provincia'];

    try{
        $consultaSelect = 'SELECT `id`,`descripcion`,`provincia_id` FROM `municipios` WHERE `provincia_id` = :provincia';
        $consulta = $conn->prepare($consultaSelect);
        $consulta->bindParam('provincia', $provincia);
        $consulta->execute();

        header('Content-Type: application/json');
        $municipios = $consulta->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode($municipios);
    }catch(PDOException $e){
        echo $e->getMessage();
    }
}