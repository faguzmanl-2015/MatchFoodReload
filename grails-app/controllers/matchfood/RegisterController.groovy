package matchfood

import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class RegisterController {
    def index() {

}

def crearUsuario(){

    def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
    def user = User.findOrSaveWhere(username: params.usernameR, password: params.passwordR)

    if(!user.authorities.contains(userRole) ){
        UserRole.create(user, userRole,true)
        user.save(true)
        render(view:"views/index")
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