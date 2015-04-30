package unicar.unirn.br

class Cor {
   // static hasMany = [veiculos1: Veiculo]
    String descCor
    static constraints = {
        descCor nullable: false, blank: false
        descCor()
    }
    String toString(){ descCor }
}
