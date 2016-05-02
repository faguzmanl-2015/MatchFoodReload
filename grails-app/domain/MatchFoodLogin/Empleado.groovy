package MatchFoodLogin

class Empleado {
    Integer id_empleado
    Integer documento
    String nombre
    String telefono
    String direccion
    Integer salario

    static hasMany = [cargos: Cargo]

    static constraints = {
        id_empleado nullable: false
        documento nullable: false
        nombre nullable: false
        telefono nullable: false
        direccion nullable: false
        salario nullable: false
    }
}

