package matchfood

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class PublicController {

    def index() {
        render "Cualquiera puede ver esto"
    }
}
