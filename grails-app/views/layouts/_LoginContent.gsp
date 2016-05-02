<a class="nav navbar-nav navbar-right" id="navbarRight">
    <a href="#" id="dropdownNav" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Iniciar Sesión <span class="caret"></span></a>
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
                </div>
                <p>
                    <a href="${createLink(controller: 'register', action: 'index')}">¿No estás registrado?</a>
                </p>
                <p>
                    <input class="btn btn-primary" type='submit' id="submit" value='Iniciar Sesión'/>
                    <g:submitToRemote url="[controller:'register', action:'actulizarLogin']" update="loginContent" value="Iniciar Sesión 2"/>
                </p>

            </form>
        </div>
    </ul>
</a>