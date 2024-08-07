function ingreso(){
    var usuario = document.getElementById('usuario').value;
    var contraseña = document.getElementById('contraseña').value;


    if (usuario === 'Camila' && contraseña === '123'){
        window.location.href = "formularioEmpleado.html"; }
    
else {
    alert('Contraseña incorrecta'); 
    }

}