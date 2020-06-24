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
                            <td>{count($eventos['id_evento'])}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html>