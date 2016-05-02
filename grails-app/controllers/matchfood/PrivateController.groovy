package matchfood

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class PrivateController {

    def index() {
        render "Para ver esto tienes que estar logueado"

    }
}
