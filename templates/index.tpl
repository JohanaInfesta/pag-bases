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
                    {foreach from=$Usuario item = Usuario}
                    <tr>
                        <td>{$Usuario['id_usuario']}</td>
                        <td>{$Usuario['Nombre']}</td>
                        <td>{$Usuario['Apellido']}</td>
                        <td>{$Usuario['E_mail]}</td>
                        <td>{$Usuario['Cantidada']}</td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </body>
</html>