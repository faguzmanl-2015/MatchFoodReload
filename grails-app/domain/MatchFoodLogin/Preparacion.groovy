package MatchFoodLogin

class Preparacion {
    Integer id_preparacion
    String hora_recibido
    String hora_despacho

    static hasMany = [empleados: Empleado]

    static constraints = {
        id_preparacion nullable: false
        hora_despacho nullable: true
        hora_recibido nullable: false
    }
}