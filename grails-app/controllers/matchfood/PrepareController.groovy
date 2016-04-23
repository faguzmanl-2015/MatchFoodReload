package matchfood

import grails.plugin.springsecurity.annotation.Secured
import MatchFoodLogin.*

@Secured(['permitAll'])
class PrepareController {

    def index() { }

    def renderprepare(){
        render(view:"index")
    }

    def makeOrderPrepare(){
        def product = Producto.findOrSaveWhere(id_producto: 00004, precio_producto: params.total)
        product.save(true)
        render("si funciona")
    }

    def prueba(){
        def test=Producto.findAll()
        render(test)
    }
}