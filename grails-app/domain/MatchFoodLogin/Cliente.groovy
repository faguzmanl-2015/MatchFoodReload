package MatchFoodLogin

class Cliente {
    Integer id_cliente
    String documento
    String nombre
    String emailU
    String direccion
    String telefono

    static constraints = {
        id_cliente nullable: false
        emailU nullable: false
        documento nullable: false
        nombre nullable: false
        direccion nullable: false
        telefono nullable: true
    }
}
