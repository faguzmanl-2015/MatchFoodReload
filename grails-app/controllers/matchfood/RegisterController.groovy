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

/*def parameters =[email:params.email,username:params.username,firstName:params.firstname,lastName:params.lastname
                 ,gender:params.gender,passwordHash:shiroSecurityService.encodePassword(params.password),active:false,avatar:f.getBytes()
                 ,userCity:params.state,userCountry:params.country]
user= new User(parameters)
mailService.sendMail {
    to "${user.email}"
    subject "Confirmar email"
    html    g.render(template:'/email/registrationConfirmation', model:[user:user,password:params.password])
}
if(user.save(flush: true)){
    user.addToRoles(Role.findByName("ROLE_USER"))
    user.addToPermissions("*:*")

    redirect(controller:'index', action:'viewHome')
}*/