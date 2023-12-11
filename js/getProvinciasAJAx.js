function inicio(){
    URL = "../modelos/getProvincias.php";

    fetch(URL)
        .then(Response => {
            if (!Response.ok) {
                throw new Error("Error en la solicitud. Código de estado: " + Response.status);
            }
            return Response.json();
        })
        .then(data => {
            let provincias = document.getElementById("provincia");

            for (let indice of data) {
                let option = document.createElement("option");
                option.value = indice.id;
                option.innerHTML = indice.descripcion;
                provincias.appendChild(option);
            }
        })
        .catch(error => {
            console.error(error);
        })
}
window.addEventListener('load', inicio, false);