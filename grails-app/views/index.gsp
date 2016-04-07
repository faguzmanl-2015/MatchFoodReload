<!DOCTYPE html>
<html>
	<head>
		<title>MatchFood</title>
		<asset:javascript src="jquery-2.1.3.js" />
        <asset:javascript src="bootstrap/js/bootstrap.min.js" />
        <asset:stylesheet src="bootstrap/css/bootstrap.min.css" />
        <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
        <asset:stylesheet src="social-buttons.css" />
        <asset:javascript src="main.js" />
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
                <a class="navbar-brand" href="${createLink(url: '/MatchFood', action: 'index')}">Match Food</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${createLink(url: '/MatchFood', action: 'index')}">Inicio <span class="sr-only">(current)</span></a></li>
                    <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                    <li><a href="${createLink(controller: 'about', action: 'index')}">¿Quiénes Somos?</a></li>
                    <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
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
                                        <div style="text-align: left; padding-bottom: 10px;">
                                            <a class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">
                                                <span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook
                                            </a>
                                            <a class="btn btn-block btn-social btn-twitter" style="text-align: left; width: 100%">
                                                <span class="fa fa-twitter"></span>&emsp;Inicia Sesión con Twitter
                                            </a>
                                        </div>
                                        <p>
                                            <a href="register">¿No estás registrado?</a>
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

	    <!--Script to load the JavaScript SDK to use FB login-->
        <div id="fb-root"></div>
        <!--Facebook Login Button -->
        <div>
            <a href="#" id="loginFB" class="buttons">Iniciar Sesión con Facebook</a>
        </div>
        <!--Script to load the JavaScript SDK to use FB login-->

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
        <div id="page-body" role="main" style="padding: 10px; width: 98%">
            <div class="jumbotron">
                <p><a href="http://www.google.com.co" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <h2>Sándwich de Carne</h2>
                    <p>
                        Carne desmechada, queso amarillo, lechuga, tomate, pimentón, apio, mostaza, salsa BBQ, pasta de
                        tomate, cebolla roja y salsa Match Food
                    </p>
                    <p><a class="btn btn-default" href="http://www.google.com.co">Learn more &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <h2>Vegetariano</h2>
                    <p>
                        Estragón, lechuga romana, tomate, cebolla, champiñones, zanahoria, apio, pimentón, maíz, salsa teriyaki,
                        queso amarillo y salsa Match Food Reload
                    </p>
                    <p><a class="btn btn-default" href="http://www.google.com.co">Learn more &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <h2>Mexicano</h2>
                    <p>
                        Carne desmechada, chile, queso mozzarella, tomate, guacamole, cilantro, lechuga, nachos, cebolla roja,
                        y salsa Match Food Hot
                    </p>
                    <p><a class="btn btn-default" href="http://www.google.com.co">Learn more &raquo;</a></p>
                </div>
            </div>

            <div id="controller-list" role="navigation">
                <h2>Controladores:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                    </g:each>
                </ul>
            </div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <g:form controller="logout">
                <g:submitButton name="logout" value="Logout" />
            </g:form>
        </div>
	</body>
</html>
