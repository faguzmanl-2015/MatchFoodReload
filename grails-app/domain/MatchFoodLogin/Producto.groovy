package MatchFoodLogin

class Producto {
    Integer id_producto
    Integer precio_producto

    static constraints = {
        id_producto nullable: false
        precio_producto nullable: false
    }
}
