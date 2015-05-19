package unicar.unirn.br

class Modelos {
    static belongsTo = [Montadora, TiposVeiculo]
    Montadora montadora
    String descModelo
    TiposVeiculo tiposveiculo
    static constraints = {
        descModelo nullable: false, blank: false
        tiposveiculo nullable: false, blank: false
        montadora nullable : false, blank: false
        descModelo()

    }
    String toString(){ descModelo + ' - ' + montadora.descMontadora}

}
