<!DOCTYPE html>
<html>
	<head>
		<title>MatchFood</title>
        <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'logoMatchFoodSmall.png')}" type="image/x-icon">
		<asset:javascript src="jquery-2.1.3.js" />
        <asset:javascript src="bootstrap/js/bootstrap.min.js" />
        <asset:stylesheet src="bootstrap/css/bootstrap.min.css" />
        <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
        <asset:stylesheet src="social-buttons.css" />
        <asset:javascript src="main.js" />

        <style type="text/css" media="screen">
            div.stars {
                width: 220px;
                display: inline-block;
            }

            input.star { display: none; }

            label.star {
                float: right;
                padding: 10px;
                font-size: 25px;
                color: #444;
                transition: all .2s;
            }

            input.star:checked ~ label.star:before {
                content: '\f005';
                color: #FD4;
                transition: all .25s;
            }

            input.star-5:checked ~ label.star:before {
                color: #FE7;
                text-shadow: 0 0 5px #FE7;
            }

            input.star-1:checked ~ label.star:before { color: #F62; }

            label.star:hover { transform: rotate(-15deg) scale(1.3); }

            label.star:before {
                content: '\f006';
                font-family: FontAwesome;
            }
        </style>
	</head>
	<body>
        <div id="usuario-Facebook">

        </div>
        <!--Script to load the JavaScript SDK to use FB login-->

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
                    <ul class="nav navbar-nav" id="generalList">
                        <li><a href="${createLink(url: '/', action: 'index')}">Inicio <span class="sr-only">(current)</span></a></li>
                        <li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
                        <li><a href="${createLink(controller: 'company', action: 'index')}">¿Quiénes Somos?</a></li>
                        <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
                        <!--li><a id="administar" href="${createLink(controller: 'administrar', action: 'index')}">Administrar</a></li-->
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a class="nav navbar-nav navbar-right" id = "navbarRight">
                                <a href="#" class="dropdown-toggle" id="dropdownNav" data-toggle="dropdown" role="button" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
                                <ul class="dropdown-menu" id="dropdown-menuNav" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">
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

        <div id="page-body" role="main" style="padding: 10px; width: 100%">
            <div class="mainImg"><img  style ="max-width: 100%; height: 100%;" src="${createLinkTo(dir:'images',file:'comparteInicio.png')}" alt="Princ"/></div>

            <div class="row">
                <div class="col-md-4">
                    <h2>Carne de Res</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'carneDesmechada.png')}" alt="CarneDes" height="200" width="300"/></div>
                    <p>
                        Carne desmechada, queso amarillo, lechuga, tomate, pimentón, apio, mostaza, salsa BBQ, pasta de
                        tomate, cebolla roja y salsa Match Food
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-carne" type="radio" name="star" checked="checked"/>
                            <label class="star star-5" for="star-5-carne"></label>
                            <input class="star star-4" id="star-4-carne" type="radio" name="star"/>
                            <label class="star star-4" for="star-4-carne"></label>
                            <input class="star star-3" id="star-3-carne" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-carne"></label>
                            <input class="star star-2" id="star-2-carne" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-carne"></label>
                            <input class="star star-1" id="star-1-carne" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-carne"></label>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <h2>Vegetariano</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'vegetariano.png')}" alt="Veg" height="200" width="300"/></div>
                    <p>
                        Estragón, lechuga romana, tomate, cebolla, champiñones, zanahoria, apio, pimentón, maíz, salsa teriyaki,
                        queso amarillo y salsa Match Food Reload
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-vege" type="radio" name="star"/>
                            <label class="star star-5" for="star-5-vege"></label>
                            <input class="star star-4" id="star-4-vege" type="radio" name="star" checked="checked"/>
                            <label class="star star-4" for="star-4-vege"></label>
                            <input class="star star-3" id="star-3-vege" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-vege"></label>
                            <input class="star star-2" id="star-2-vege" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-vege"></label>
                            <input class="star star-1" id="star-1-vege" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-vege"></label>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <h2>Mexicano</h2>
                    <div class="imgCarne"><img src="${createLinkTo(dir:'images',file:'Mexicano.png')}" alt="Mex" height="200" width="300"/></div>
                    <p>
                        Carne desmechada, chile, queso mozzarella, tomate, guacamole, cilantro, lechuga, nachos, cebolla roja,
                        y salsa Match Food Hot
                    </p>
                    <div class="stars">
                        <form action="">
                            <input class="star star-5" id="star-5-mexi" type="radio" name="star"/>
                            <label class="star star-5" for="star-5-mexi"></label>
                            <input class="star star-4" id="star-4-mexi" type="radio" name="star" checked="checked"/>
                            <label class="star star-4" for="star-4-mexi"></label>
                            <input class="star star-3" id="star-3-mexi" type="radio" name="star"/>
                            <label class="star star-3" for="star-3-mexi"></label>
                            <input class="star star-2" id="star-2-mexi" type="radio" name="star"/>
                            <label class="star star-2" for="star-2-mexi"></label>
                            <input class="star star-1" id="star-1-mexi" type="radio" name="star"/>
                            <label class="star star-1" for="star-1-mexi"></label>
                        </form>
                    </div>
                </div>
            </div>

            <!--<div id="controller-list" role="navigation">
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
            </g:form>-->
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
    <g:javascript>
        var rol = "usuario";
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

