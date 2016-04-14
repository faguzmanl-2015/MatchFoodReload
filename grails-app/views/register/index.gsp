
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'logoMatchFoodSmall.png')}" type="image/x-icon">
    <asset:javascript src="jquery-2.1.3.js" />
    <asset:javascript src="bootstrap/js/bootstrap.min.js" />
    <asset:stylesheet src="bootstrap/css/bootstrap.min.js" />
    <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
    <asset:stylesheet src="social-buttons.css" />
    <asset:javascript src="main.js" />
    <title>MatchFood - Registro</title>
</head>

<body>
    <nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${createLink(url: '/', action: 'index')}"><img style="margin-top: 6px" src="${createLinkTo(dir:'images',file:'letrasMatchFood.png')}" alt="Matchfood" width="100"/></a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${createLink(url: '/', action: 'index')}">Inicio</a></li>
                <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                <li><a href="${createLink(controller: 'company', action: 'index')}">¿Quiénes Somos?</a></li>
                <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
                <!--li><a id="administar" href="${createLink(controller: 'administrar', action: 'index')}">Administrar</a></li-->
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <div id="fb-root"></div>
                <li class="dropdown">
                    <a class="nav navbar-nav navbar-right">
                        <a href="#" id="dropdownLogin" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" >Iniciar Sesión <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">
                            <div style="width: 300px;">
                                <div class='fheader'><h3><b>Bienvenido</b></h3></div>
                                <form action='/MatchFood/j_spring_security_check' method='POST' id='loginForm' autocomplete='off'>
                                    <p>
                                        <label for='username'>Usuario</label>
                                        <input type='text' class="form-control" name='j_username' id='username' placeholder="Usuario o Correo Electrónico" />
                                    </p>

                                    <p>
                                        <label for='password'>Contraseña:</label>
                                        <input class="form-control" placeholder="Password" type="password" name='j_password' id='password'/>
                                    </p>

                                    <p id="remember_me_holder">
                                        <input type='checkbox' class='chk' name='_spring_security_remember_me' id='remember_me' />
                                        <label for='remember_me'>Recuérdame</label>
                                    </p>
                                    <div style="text-align: left; padding-bottom: 10px;">
                                        <a id="loginFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">
                                            <span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook
                                        </a>
                                        <a class="btn btn-block btn-social btn-twitter" style="text-align: left; width: 100%">
                                            <span class="fa fa-twitter"></span>&emsp;Inicia Sesión con Twitter
                                        </a>
                                    </div>
                                    <p>
                                        <a href="${createLink(controller: 'register', action: 'index')}">¿No estás registrado?</a>
                                    </p>
                                    <p>
                                        <input class="btn btn-primary" type='submit' id="submit" value='Iniciar Sesión'/>
                                    </p>
                                </form>
                            </div>
                        </ul>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!--form class="form-horizontal" role="form" controller="/MatchFood/RegisterController" action="crearUsuario" method="post" enctype="multipart/form-data">
    <p>
        <label for='username'>Nombre de usuario:</label>
        <input type='text' class='text_' name='usernameR' id='register_user_name'/>
    </p>

    <p>
        <label for='password'>Contraseña:</label>
        <input type='password' class='text_' name='passwordR' id='register_password'/>
    </p>

    <p>
        <input type='submit' id="btn_register" value='Registrarse'/>
    </p>
</form-->

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
        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="reset" id="btn_cancel_register" class="btn btn-default">Cancelar</button>
                <input type='submit' id="btn_register" class="btn btn-primary" value='Registrarse'/>
            </div>
        </div>
    </fieldset>
</form>
</div>
<g:javascript>
    function correctRegister ()
    {
         alert("Usuario Registrado Satisfactoriamente");
    }
</g:javascript>
<g:javascript>
    function errorRegister ()
    {
        alert("Error");
    }
</g:javascript>
</body>
</html>

