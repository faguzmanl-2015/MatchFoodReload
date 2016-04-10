<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 10:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${createLink(url: '/MatchFood', action: 'index')}">Match Food</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${createLink(url: '/MatchFood', action: 'index')}">Inicio <span class="sr-only">(current)</span></a></li>
                    <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                    <li><a href="${createLink(controller: 'about', action: 'index')}">¿Quiénes Somos?</a></li>
                    <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
                    <li><a id="administar" href="${createLink(controller: 'administrar', action: 'index')}">Administrar</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="nav navbar-nav navbar-right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
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
                                        <div id="fb-root"></div>
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
    <title>Administrar</title>
</head>
<body>
    <g:javascript>
        var rol = "admin";
        visibilidad(rol);
        function visibilidad(rol) {
            if (rol == "usuario")
                document.getElementById("administar").style.visibility = "hidden";
            else
                document.getElementById("administar").style.visibility = "visible";
        }
    </g:javascript>
</body>
</html>