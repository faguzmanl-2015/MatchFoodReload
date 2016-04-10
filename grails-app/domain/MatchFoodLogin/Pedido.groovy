package MatchFoodLogin

class Pedido {
    Integer id_pedido
    Integer precio_total
    static hasOne = [Envio, Preparacion, Cliente, MedioPago]
    static constraints = {
        id_pedido nullable: false
        precio_total nullable: false
    }
}