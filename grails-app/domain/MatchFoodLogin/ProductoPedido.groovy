package MatchFoodLogin

class ProductoPedido {
    Integer id_producto_pedido
    static hasOne = [Pedido]
    static hasMany = [productos: Producto]
    Integer cantidad
    static constraints = {
        id_producto_pedido nullable: false
        cantidad nullable: false
    }
}