<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>MatchFood</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
            #login {
                margin: 15px 0px;
                padding: 0px;
                text-align: center;
            }
            #login .inner {
                width: 340px;
                padding-bottom: 6px;
                margin: 60px auto;
                text-align: left;
                border: 1px solid #abb;
                background-color: #079509;
                -moz-box-shadow: 2px 2px 2px #eee;
                -webkit-box-shadow: 2px 2px 2px #eee;
                -khtml-box-shadow: 2px 2px 2px #eee;
                box-shadow: 2px 2px 2px #eee;
            }
            #login .inner .fheader {
                padding: 18px 26px 14px 26px;
                background-color: #95071F;
                margin: 0px 0 14px 0;
                color: #ffffff;
                font-size: 18px;
                font-weight: bold;
            }
            #login .inner .cssform p {
                margin: 0;
                padding: 4px 0 3px 0;
                padding-left: 105px;
                margin-bottom: 20px;
                height: 1%;

            }
            #login .inner .cssform input[type='text'] {
                width: 120px;
            }

            #login .inner .cssform label {
                font-weight: bold;
                float: left;
                text-align: right;
                margin-left: -105px;
                width: 110px;
                padding-top: 3px;
                padding-right: 10px;
                color: #ffffff;
            }

            #login #remember_me_holder {
                padding-left: 120px;
            }

            #login #submit {
                margin-left: 15px;
            }

            #login #remember_me_holder label {
                float: none;
                margin-left: 0;
                text-align: left;
                width: 200px
            }

            #login .inner .login_message {
                padding: 6px 25px 20px 25px;
                color: FFFFFF;
            }

            #login .inner .text_ {
                width: 120px;
            }

            #login .inner .chk {
                height: 12px;
            }
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Barra lateral</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${GroovySystem.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Plugins instalados</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>MatchFood</h1>j_spring_securi
			<p>Please check in</p>

            <div id='login'>
                <div class='inner'>
                    <div class='fheader'>Por favor identíficate</div>



                    <form action='/MatchFood/j_spring_security_check' method='POST' id='loginForm' class='cssform' autocomplete='off'>
                        <p>
                            <label for='username'>Nombre de usuario:</label>
                            <input type='text' class='text_' name='j_username' id='username'/>
                        </p>

                        <p>
                            <label for='password'>Contraseña:</label>
                            <input type='password' class='text_' name='j_password' id='password'/>
                        </p>

                        <p id="remember_me_holder">
                            <input type='checkbox' class='chk' name='_spring_security_remember_me' id='remember_me' />
                            <label for='remember_me'>Recuérdame</label>
                        </p>

                        <p>
                            <input type='submit' id="submit" value='Identifícate'/>
                        </p>
                    </form>
                </div>
            </div>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
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
