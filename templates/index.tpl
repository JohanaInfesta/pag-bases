<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Trabajo de Bases</title>
    </head>
    <body>
        <div>
            <h2 class="title-top">Top 10</h2>
            <table class="topten">
                <thead>
                    <tr>
                        <th >ID Usuario</th>
                        <th class="name">Nombre</th>
                        <th class="surname">Apellido</th>
                        <th>E_mail</th>
                        <th>Cantidada de eventos</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$usuario item = user }
                        <tr>
                            <th>{$user['id_usuario']}</th>
                            <td class="name">{$user['nombre']}</td>
                            <td class="surname">{$user['apellido']}</td>
                            <td>{$user['e_mail']}</td>
                            <td>{$user['cant']}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        <div class="busqueda col px-md-5">      
            <div class="dropdown show p-3">
                <p class="info">Seleccione un Usuario para traer los eventos y la cantidad de edicion evento por cada uno</p>
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuLink" data-toggle = "dropdown" aria-haspopup="true" aria-expanded ="false">Usuario</button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" id="usuario">
                    {foreach from=$usuarioBusqueda item=busqueda}
                        <a class="dropdown-item" href="#" onclick="navigatePost('http://localhost/pag-bases/busquedaUsuario.tpl', {ldelim}id_usuario:{$busqueda['id_usuario']}{rdelim})">
                            {$busqueda['id_usuario']} {$busqueda['nombre']} {$busqueda['apellido']}
                        </a>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="main-content">

        </div>
    </body>
    <script type="text/javascript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html>