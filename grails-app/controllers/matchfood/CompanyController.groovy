package matchfood
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class CompanyController {
    def index() { }
}
