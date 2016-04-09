package MatchFoodLogin

class Pedido {
    Integer id_pedido
    Integer precio_total
    static hasOne = [envio: Envio, preparacion: Preparacion, cliente: Cliente, medio_pago: MedioPago]
    static constraints = {
        id_pedido nullable: false
        precio_total nullable: false
    }
}
