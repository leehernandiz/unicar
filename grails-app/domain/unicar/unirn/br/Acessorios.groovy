package unicar.unirn.br

class Acessorios {
   // static hasMany = [veiculos1: Veiculo]
    String descAcessorio
    static constraints = {
        descAcessorio nullable: false, blank: false
        descAcessorio()
    }
    String toString(){ descAcessorio }
}
