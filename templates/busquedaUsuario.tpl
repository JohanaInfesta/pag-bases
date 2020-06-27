        <div>
            <h2 class="title-top">Eventos del usuario:</h2>
            <table class="topten">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>id_evento</th>
                        <th>Cantidada de edicion por evento</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$evento item = event }
                        <tr>
                            <td>{$event['nombre']}</td>
                            <td>{$event['apellido']}</td>
                            <td>{$event['id_evento']}</td>
                            <td>{$event['cant']}</td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>