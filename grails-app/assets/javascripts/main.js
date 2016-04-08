/**
 * Created by Crow on 04/04/2016.
 */
$(function() {
    var app_id = '219219088445493';
    var scopes = 'public_profile,email, user_friends';
    var btn_login = '<a id="loginFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
                    '<span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook'+
                    '</a>;'
    var div_session = "<div id = 'facebook-session'>"+
                        "<strong></strong>"+
                        "<img>"+
                        '<a id="logoutFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
                        '<span class="fa fa-facebook"></span>&emsp;Cerrar sesión'+
                        '<br>'+
                        "<\div>";

    window.fbAsyncInit = function() {
        FB.init({
            appId      : app_id,
            cookie     : true,
            status     : true,
            xfbml      : true,
            version    : 'v2.5'
        });

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function(){

            });
        });
    };

    var statusChangeCallback = function(response, callback) {
        console.log('statusChangeCallback');
        console.log(response);

        if (response.status === 'connected') {
            getFacebookData();
        } else {
            callback(false);
        }
    }

    var checkLoginState = function(callback) {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response, function(data){
                callback(data);
            });
        });
    }

    var getFacebookData = function(){
        FB.api('/me', function(response) {
            $('#loginFB').after(div_session);
            $('#loginFB').remove();
            $('#facebook-session strong').text("Bienvenido: "+response.name);
            $('#facebook-session img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=small');
        })
    }

    var facebookLogin = function(){
        checkLoginState(function(response) {
            if (!response) {
                FB.login(function(response) {
                    if (response.status == 'connected')
                        getFacebookData();
                }, {scope: scopes})
            }
        })
    }

    var facebookLogout = function() {
        FB.getLoginStatus(function(response) {
            if (response.status === 'connected') {
                FB.logout(function(response) {
                    $('#facebook-session').before(btn_login);
                    $('#facebook-session').remove();
                })
            }
        });

    }

    $(document).on('click', '#loginFB', function(e){
        e.preventDefault();
        facebookLogin();
    })

    $(document).on('click', '#logoutFB', function(e){
        e.preventDefault();
        if (confirm("¿Está seguro?"))
            facebookLogout();
        else
            return false;
    })

})
