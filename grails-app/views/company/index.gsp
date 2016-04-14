<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 6:16 AM
--%>

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
    <title>Match Food - Nosotros</title>
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
                <li><a href="${createLink(url: '/', action: 'index')}">Inicio <span class="sr-only">(current)</span></a></li>
                <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                <li><a href="${createLink(controller: 'company', action: 'index')}">¿Quiénes Somos?<span class="sr-only">(current)</span></a></li>
                <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
                <!--li><a id="administar" href="${createLink(controller: 'administrar', action: 'index')}">Administrar</a></li-->
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
<div class="container">

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Nosotros:
                    <strong>¿QUIÉNES SOMOS?</strong>
                </h2>
                <hr>
            </div>
            <div class="col-md-6">
                <img class="img-responsive img-border-left" src="https://b.zmtcdn.com/data/pictures/chains/3/5700013/b38a51822daf30a54249a05b26a9831c.png" alt="">
            </div>
            <div class="col-md-6">
                <p>Somos una compañía interesada en la satisfacción del cliente, donde presentamos productos personalizados acompañados con un servicio de calidad.</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Compromisos
                    <strong>MatchFood</strong>
                </h2>
                <hr>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'quality.jpg')}" style="padding-top: 10px" height="230" width="280"/></div>
                <h3>Compromiso de Calidad
                    <small>Productos seguros, muy bien elaborados y recientes</small>
                </h3>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'calidad.jpg')}"  height="" width="100%"/></div>
                <h3>Compromiso en nuestros servicios
                    <small>Agilidad y responsabilidad en cada uno de nuestros servicios</small>
                </h3>
            </div>
            <div class="col-sm-4 text-center">
                <div class=""><img src="${createLinkTo(dir:'images',file:'personal.jpg')}"  height="215" width=""/></div>
                <h3>Compromiso con el cliente
                    <small>Adaptamos nuestros productos y servicios para conformidad del cliente</small>
                </h3>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</div>
    <g:javascript>
        // Load the SDK asynchronously
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=219219088445493";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </g:javascript>

<!-- /.container -->
</body>
</html>