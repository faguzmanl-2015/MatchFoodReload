package matchfood
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class MenuController {

    def index() { }
}
