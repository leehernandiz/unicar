package unicar.unirn.br

class TiposVeiculo {
    //static hasMany = [veiculos1: Veiculo]
    String descTipoVeiculo
    static constraints = {
        descTipoVeiculo nullable: false, blank: false
        descTipoVeiculo()
    }
    String toString(){ descTipoVeiculo }
}
