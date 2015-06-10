class Modelos {
    static belongsTo = [Montadora, TiposVeiculo]
    String descModelo
    Montadora montadora
    TiposVeiculo tiposveiculo
    static constraints = {
        descModelo nullable: false, blank: false
        tiposveiculo nullable: false, blank: false
        montadora nullable : false, blank: false
        descModelo()

    }
    String toString(){ descModelo + '-' + montadora.descMontadora  }

}
