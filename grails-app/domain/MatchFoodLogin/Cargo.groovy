package MatchFoodLogin

class Cargo {
    Integer id_cargo
    String nombre
    String descripcion

    static constraints = {
        id_cargo nullable: false
        nombre nullable: false
        descripcion nullable: true
    }
}
