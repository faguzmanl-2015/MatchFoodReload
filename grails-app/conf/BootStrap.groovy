import MatchFoodLogin.*
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class BootStrap {

    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'admin', password: '1234')

        if(!user.authorities.contains(adminRole) ){
            UserRole.create(user, adminRole,true)
        }


        def userRole = Role.findOrSaveWhere(authority: 'ROLE_USUARIO')
        def userNoAdmin = User.findOrSaveWhere(username: 'user', password: '1234')

        if(!userNoAdmin.authorities.contains(userRole) ){
            UserRole.create(userNoAdmin, userRole,true)
        }
    }
    def destroy = {
    }
}
