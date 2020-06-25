<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Trabajo de Bases</title>
    </head>
    <body>
        <div>
            <h2>Top 10</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID Usuario</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>E_mail</th>
                        <th>Cantidada de eventos</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$usuario item = user }
                        <tr>
                            <th>{$user['id_usuario']}</th>
                            <td>{$user['nombre']}</td>
                            <td>{$user['apellido']}</td>
                            <td>{$user['e_mail']}</td>
                            <td>{$user['cant']}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
        <div>
            <p> ingresar nombre y apellido del usuario</p>
            <input type="text" name="nombre" value="" id="nombre">
            <input type="text" name="apellido" value="" id="apellido">
            <button type="button" onclick="navigatePost('http://localhost/pag-bases/busquedaUsuario',)">Buscar</button>
        </div>
        <div class="main-content">
        </div>
    </body>
    <script type="text/javascript" src="js/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html>