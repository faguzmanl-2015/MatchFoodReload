package MatchFoodLogin

class ProductoIngrediente {
    Integer id_producto_ingrediente

    static hasMany =[productos: Producto, ingredientes: Ingrediente]
    static constraints = {
        id_producto_ingrediente nullable: false

    }
}
