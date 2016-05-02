package matchfood
import grails.plugin.springsecurity.annotation.Secured
import MatchFoodLogin.*

@Secured(['permitAll'])
class MenuController {

    def index() {}

    def makeOrderT1(){
        def product = Producto.findOrSaveWhere(id_producto: 00001, precio_producto: 12000)
        product.save(true)
        render(view:"index")
    }

    def makeOrderT2(){
        def product = Producto.findOrSaveWhere(id_producto: 00002, precio_producto: 14000)
        product.save(true)
        render(view:"index")
    }

    def makeOrderT3(){
        def product = Producto.findOrSaveWhere(id_producto: 00003, precio_producto: 15000)
        product.save(true)
        render(view:"index")
    }

}

