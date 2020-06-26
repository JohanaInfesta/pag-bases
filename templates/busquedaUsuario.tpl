        <div>
            <h2>Eventos del usuario: {$busqueda['nombre']} {$busqueda['apellido']}</h2>
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>id_evento</th>
                        <th>Cantidada de edicion por evento</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$evento item = eventos }
                        <tr>
                            <td>{$eventos['nombre']}</td>
                            <td>{$eventos['apellido']}</td>
                            <td>{$eventos['id_evento']}</td>
                            <td>{$eventos['cant']}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>