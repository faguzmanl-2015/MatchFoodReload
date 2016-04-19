package matchfood

import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {
    def index() {

}
def springSecurityService
def crearUsuario(){
        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
        def user = User.findOrSaveWhere(name: params.nameR, email: params.emailR, address: params.addressR, phone: params.phoneR, username: params.usernameR, password: params.passwordR)

        try
        {
            if(!user.authorities.contains(userRole) ){
                UserRole.create(user, userRole,true)
                user.save(true)
                springSecurityService.reauthenticate(params.usernameR, params.passwordR)
                redirect(uri:'/')
            }
        }
        catch (Exception e)
        {

        }

    }

    def showLoggedUser(){
        try{
            String username=springSecurityService.authentication.getName()
            if(username=="__grails.anonymous.user__"){
                render("no one logged on");
            }
            else{
                render(username)
            }
        }
        catch(Exception e){
        }

    }
}

