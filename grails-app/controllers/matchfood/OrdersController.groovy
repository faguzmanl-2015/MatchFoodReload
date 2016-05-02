package matchfood
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class OrdersController {

    def index() { }

    def shoppingCart = {
        getPedido {
            action {

                [ListarPedidos: MatchFoodLogin.Producto.list()]
            }
            on("success").to "showCatalogue"
            on(Exception).to "handleError"
        }
    }
}
