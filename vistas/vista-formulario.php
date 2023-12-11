<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script  src="../js/getProvinciasAJAX.js" defer></script>
    <script  src="../js/getMunicipiosAJAX.js" defer></script>
    <title>Registro localidad</title>
</head>

<body>
    <div class="container">


        <div class="card mt-4">
            <div class="card-header mb-3">
                <h3>Registo localidades</h3>
                <div class="card-body mb-3">
                    <form action="" method="post" class="fomr-control">
                        <div>
                            <label class="form-label" for="">Provincia</label>
                            <select class="form-select" id="provincia" aria-label="Default select example">
                                <option selected value="Provincias" disabled>Provincias</option>
                            </select>
                        </div>
                        <div>
                            <label class="form-label" for="">Municipio</label>
                            <select class="form-select" id="municipio" aria-label="Default select example" >
                                
                            </select>
                        </div>
                        <div>
                            <label class="form-label" for="">Localidad</label>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Open this select menu</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <div>
                            <label class="form-label" for="">Descripcion</label>
                            <input class="form-control"type="text" name="descripcion" id="descripcion">
                        </div>
                        <div>
                            <label class="form-label" for="">Cantidad habitantes</label>
                            <input class="form-control" type="number" name="cant_habitantes" id="cant_habitantes">
                        </div>
                        <button class="btn btn-primary" type="submit">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>