<?php
session_start();
include "../config/conexion.php";

// Verificar si los datos necesarios están presentes en $_POST
if (isset($_POST['numero_nomina']) && isset($_POST['cedula']) && isset($_POST['auxTrans']) && isset($_POST['anio_nomina']) && isset($_POST['diasLa']) && isset($_POST['dxp']) && isset($_POST['dxs']) && isset($_POST['td']) && isset($_POST['fecha_nomina']) && isset($_POST['hed']) && isset($_POST['hen']) && isset($_POST['hedf']) && isset($_POST['salario']) && isset($_POST['vhe']) && isset($_POST['boni']) && isset($_POST['salDev'])) {

    // Obtener los datos del formulario
    $idNomina = $_POST['numero_nomina'];
    $idEmpleado = $_POST['cedula'];
    $auxilioTransporte = $_POST['auxTrans'];
    $anio = $_POST['anio_nomina'];
    $diasLaborados = $_POST['diasLa'];
    $descuentoPension = $_POST['dxp'];
    $descuentoSalud = $_POST['dxs'];
    $sueldoNeto = $_POST['td'];
    $fechaNomina = $_POST['fecha_nomina']; // Fecha completa
    $hed = $_POST['hed'];
    $hen = $_POST['hen'];
    $hedf = $_POST['hedf'];
    $salario = $_POST['salario'];
    $vhe = $_POST['vhe'];
    $boni = $_POST['boni'];
    $salDev = $_POST['salDev'];

    

    // Insertar los datos en la base de datos
    $sql = "INSERT INTO nomina (idnomina, idempleado, auxilioTrans, mes, ano, diaslaborados, descuentopension, descuentosalud, sueldoneto, hed, hen, hedf, salario, vhe, boni, salDev) 
    VALUES ('$idNomina','$idEmpleado', '$auxilioTransporte', '$fechaNomina', '$anio', '$diasLaborados', '$descuentoPension', '$descuentoSalud', '$sueldoNeto', '$hed', '$hen', '$hedf', '$salario', '$vhe', '$boni', '$salDev')";

    if ($conexion->query($sql) === TRUE) {
        echo "Nómina registrada exitosamente.";
    } else {
        echo "Error: " . $sql . "<br>" . $conexion->error;
    }

} else {
    echo "Error: Datos faltantes en el formulario.";
}

header('Location: ../views/nomina.html'); // Redirigir a una página predeterminada

mysqli_close($conexion);
?>
