package MatchFoodLogin

class MedioPago {
    Integer id_medio_pago
    String nombre
    String descripcion

    static constraints = {
        id_medio_pago nullable: false
        nombre nullable: false
        descripcion nullable: true
    }
}
