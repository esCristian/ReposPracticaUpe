<?php
require_once "../modelos/conexionBD.php"; 
$queryProvincias = "SELECT `id`, `descripcion` FROM `provincias`";

try {
    $consulta = $conn->query($queryProvincias);
    $registro = $consulta->fetchAll(PDO::FETCH_ASSOC);

    header('Content-Type: application/json');
    echo json_encode($registro);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
