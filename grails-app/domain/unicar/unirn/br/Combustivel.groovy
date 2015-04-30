package unicar.unirn.br

class Combustivel {
  //  static hasMany = [veiculos1: Veiculo]
    String descCombustivel
    static constraints = {
        descCombustivel nullable: false, blank: false
        descCombustivel()
    }
    String toString(){ descCombustivel }
}
