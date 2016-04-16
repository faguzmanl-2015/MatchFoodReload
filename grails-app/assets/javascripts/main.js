/**
 * Created by Crow on 04/04/2016.
 */
$(function() {
    var app_id = '219219088445493';
    var scopes = 'public_profile,email, user_friends';
    var btn_login = '<a id="loginFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
                    '<span class="fa fa-facebook"></span>&emsp;Inicia Sesión con Facebook'+
                    '</a>';
    var div_session = "<li id = 'facebook-session'>"+
                            '<a href="#" class="dropdown-toggle" id="dropFacebookLoginNav" data-toggle="dropdown" role="button" aria-expanded="false"><img> <span class="caret"></span></a>'+
                                '<ul class="dropdown-menu" id="dropdown-menuFacebookLoginNav" role="menu" style="padding-left: 20px; padding-right: 20px; padding-top: 10px; padding-bottom: 10px;">'+
                                    '<p>'+
                                        '<div id="textName"><strong></strong></div>'+
                                    '</p>'+
                                    '<div style="text-align: left; padding-bottom: 10px;">'+
                                        '<a id="logoutFB" class="btn btn-block btn-social btn-facebook" style="text-align: left; width: 100%">'+
                                            '<span class="fa fa-facebook"></span>&emsp;Cerrar sesión'+
                                        '</a>'+
                                    '</div>'+
                                '</ul>'+
                            '</a>'+
                        '</li>';
    var dropNav = $('#dropdownNav');

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
            $('#generalList').append(div_session);
            disappear();
            $('#textName strong').text("Bienvenido: "+response.name);
            $('#dropFacebookLoginNav img').attr('src','http://graph.facebook.com/'+response.id+'/picture?type=small');
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
                    $('#facebook-session').remove();
                    appear();
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
    function disappear ()
    {
        document.getElementById("dropdownNav").style.visibility = "hidden";
        document.getElementById("dropdown-menuNav").style.visibility = "hidden";
    }
    function appear ()
    {
        document.getElementById("dropdownNav").style.visibility = "visible";
        document.getElementById("dropdown-menuNav").style.visibility = "visible";
    }

})
