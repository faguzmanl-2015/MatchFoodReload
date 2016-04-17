<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
        <asset:javascript src="jquery-2.1.3.js" />
        <asset:javascript src="bootstrap/js/bootstrap.min.js" />
        <asset:stylesheet src="bootstrap/css/bootstrap.min.js" />
        <asset:stylesheet src="font-awesome-4.5.0/css/font-awesome.min.css" />
		<g:layoutHead/>
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
					<a class="navbar-brand" href="#">Match Food</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="${createLink(url: '/MatchFood', action: 'index')}">Inicio <span class="sr-only">(current)</span></a></li>
						<li><a href="${createLink(controller: 'prepare', action: 'index')}">Prepáralo a tu gusto</a></li>
						<li><a href="${createLink(controller: 'company', action: 'index')}">¿Quiénes Somos?</a></li>
						<li><a href="${createLink(controller: 'contact', action: 'index')}">Contáctenos</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown" id="dropdownList">
							<a class="nav navbar-nav navbar-right" id="navbarRight">
								<a href="#" class="dropdown-toggle" id="dropdownNav" data-toggle="dropdown" role="button" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
								<ul class="dropdown-menu" id="dropwdown-menuNav" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">
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
		<g:layoutBody/>
	</body>
</html>
