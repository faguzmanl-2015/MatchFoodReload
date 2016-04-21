package matchfood

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ConditionsController {

    def index() { }
}
