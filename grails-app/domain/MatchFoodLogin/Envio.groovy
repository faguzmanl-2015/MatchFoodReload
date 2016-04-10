package MatchFoodLogin

class Envio {
    Integer id_envio
    String direccion
    String hora_salida
    String hora_entregado

    static hasMany = [empleados: Empleado]

    static constraints = {
        id_envio nullable: false
        direccion nullable: false
        hora_salida nullable: false
        hora_entregado nullable: true

    }
}
