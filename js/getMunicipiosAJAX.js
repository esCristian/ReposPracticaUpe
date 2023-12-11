function inicio(){
    document.getElementById('provincia').addEventListener("change", getMunicipios, false);
}

function getMunicipios(){
    let provincia = document.getElementById('provincia')
    let selectElegido = provincia.value;

    var datos = new  URLSearchParams()
    datos.append('provincia', selectElegido);
    let url = '../modelos/getMunicipios.php'
    fetch(url ,{
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded' 
        },
        body: datos
    })
    .then(response => {return response.json()})
    .then(data=>{
        console.log(data)
        let municipios = document.getElementById('municipio')
        municipios.innerHTML = "<option selected disabled>Municipios</option>";
        for(let indice of data){
            let option = document.createElement('option');
            option.value = indice.id;
            option.innerHTML = indice.descripcion;
            municipios.appendChild(option)
        }
    })
    .catch(error =>{
        console.error('Error al enviar datos: ',error)
    })

}

window.addEventListener('load',inicio,false);