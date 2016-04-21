import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(name: 'admin', email: 'correo@unal.edu.co', address: 'La Nacho', phone: '3165000', username: 'admin', password: '1234')

        if(!user.authorities.contains(adminRole) ){
            UserRole.create(user, adminRole,true)
        }

        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USUARIO')
        def userNoAdmin = User.findOrSaveWhere(name: 'user', email: 'correoUser@unal.edu.co', address: 'La Nacho', phone: '3165000', username: 'user', password: '1234')

        if(!userNoAdmin.authorities.contains(userRole) ){
            UserRole.create(userNoAdmin, userRole,true)
        }
    }
    def destroy = {
    }
}
