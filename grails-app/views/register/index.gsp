
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
    <div class="col-lg-5" style="padding: 20px;">
        <h2>Match Food</h2>
        <p>Haz parte de nuestra comunidad y no te pierdas las mejores ofertas</p>
    <form class="form-horizontal" style="padding-top: 20px;" role="form" controller="/MatchFood/RegisterController" action="crearUsuario" method="post" enctype="multipart/form-data" onerror="errorRegister()" onsubmit="correctRegister()">
        <fieldset>
            <div class="form-group">
                <label for="register_name" class="col-lg-2 control-label">Nombre</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Nombre" type="text" name='nameR' id='register_name' />
                </div>
            </div>
            <div class="form-group">
                <label for="register_email" class="col-lg-2 control-label">Correo Electrónico</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Correo Electrónico" type="text" name='emailR' id='register_email' />
                </div>
            </div>
            <div class="form-group">
                <label for="register_user_name" class="col-lg-2 control-label">Usuario</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Nickname" type="text" name='usernameR' id='register_user_name' />
                </div>
            </div>
            <div class="form-group">
                <label for="register_address" class="col-lg-2 control-label">Dirección</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Dirección" type="text" name='addressR' id='register_address' />
                </div>
            </div>
            <div class="form-group">
                <label for="register_phone" class="col-lg-2 control-label">Teléfono</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Teléfono de Contacto" type="text" name='phoneR' id='register_phone' />
                </div>
            </div>
            <div class="form-group">
                <label for="register_password" class="col-lg-2 control-label">Contraseña</label>
                <div class="col-lg-10">
                    <input class="form-control" required="required" placeholder="Contraseña" type="password" name='passwordR' id='register_password' />
                </div>
            </div>
            <div>
                <p>Al registrarse acepta los <a href="${createLink(controller: 'conditions', action: 'index')}">Términos y Condiciones</a> para el uso de su información por Match Food</p>
            </div>
            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <button type="reset" id="btn_cancel_register" class="btn btn-default">Cancelar</button>
                    <input type='submit' id="btn_register" class="btn btn-primary" value='Registrarse'/>
                </div>
            </div>
        </fieldset>
    </form>
    </div>
</body>
</html>

