<%--
  Created by IntelliJ IDEA.
  User: dabaq
  Date: 7/04/2016
  Time: 6:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:javascript src="jquery-2.1.3.js" />
    <asset:javascript src="bootstrap/js/bootstrap.min.js" />
    <asset:stylesheet src="bootstrap/css/bootstrap.min.js" />
    <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
    <asset:stylesheet src="social-buttons.css" />
    <asset:javascript src="main.js" />
    <title>Match Food - Contáctanos</title>
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
                <li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos<span class="sr-only">(current)</span></a></li>
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
                <h2 class="intro-text text-center">Contáctanos
                    <strong>Match Food</strong>
                </h2>
                <hr>
            </div>
            <div class="col-md-8">
                <div style="width:100%;overflow:hidden;height:400px;max-width:100%;"><div id="embed-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Universidad+Nacional+de+Colombia,+Bogotá,+Colombia&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-html" href="https://www.interserver-coupons.com" id="enable-map-info">interserver-coupons.com</a><style>#embed-map-display img{max-width:none!important;background:none!important;font-size: inherit;}</style></div><script src="https://www.interserver-coupons.com/google-maps-authorization.js?id=1e166be2-c508-03f0-5471-9fe8be4e7a0a&c=google-html&u=1460219317" defer="defer" async="async"></script>
            </div>
            <div class="col-md-4">
                <p>Teléfono Bogotá:
                    <strong>316 50 00</strong>
                </p>
                <p>Email:
                    <strong><a href="mailto:name@example.com">atencionalcliente@matchfood.com.co</a></strong>
                </p>
                <p>Dirección:
                    <strong>Teusaquillo
                        <br>Calle 45 # 30-12 </strong>
                </p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Envíanos
                    <strong> tu mensaje</strong>
                </h2>
                <hr>
                <p> ¿Podemos ayudarte en algo? ¡Queremos saber tu opinión!</p>
                <p>Para nosotros es muy importante conocer su opinión sobre Match Food, por eso, hemos creado el
                siguiente espacio para que pueda compartir con nosotros su experiencia con nuestra marca. En el presente
                formulario puede dejarnos sus comentarios, solicitudes, felicitaciones, quejas o sugerencias. Tenemos un
                equipo a su disposición para darle una respuesta oportuna.</p>
                <br>
                <form role="form">
                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label>Nombre</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>Email</label>
                            <input type="email" class="form-control">
                        </div>
                        <div class="form-group col-lg-4">
                            <label>Celular</label>
                            <input type="tel" class="form-control">
                        </div>
                        <div class="clearfix"></div>
                        <div class="form-group col-lg-12">
                            <label>Comentarios</label>
                            <textarea class="form-control" rows="6"></textarea>
                        </div>
                        <div class="form-group col-lg-12">
                            <input type="hidden" name="save" value="contact">
                            <button type="submit" class="btn btn-default">Enviar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<!-- /.container -->
</body>
</html>