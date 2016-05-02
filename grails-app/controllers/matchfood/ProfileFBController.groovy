package matchfood
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ProfileFBController {

    def index() {
    }
    def renderprofileFB(){
        render(view:"index")
    }
}
