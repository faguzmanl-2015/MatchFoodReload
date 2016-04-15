/**
 * Created by dabaq on 15/04/2016.
 */
// Load the SDK asynchronously
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=219219088445493";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

var rol = "usuario";
visibilidad(rol);
function visibilidad(rol) {
    if (rol == "usuario")
        document.getElementById("administar").style.visibility = "hidden";
    else
        document.getElementById("administar").style.visibility = "visible";
}

function correctRegister ()
{
    alert("Usuario Registrado Satisfactoriamente");
}

function errorRegister ()
{
    alert("Error");
}
