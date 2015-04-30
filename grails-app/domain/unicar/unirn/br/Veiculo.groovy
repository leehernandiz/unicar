package unicar.unirn.br

class Veiculo {

    Proprietario proprietario
    Combustivel combustivel
    Cor cor
    Modelos modelo
    float valor
    String ano
    String comentario

    static belongsTo = [Cor, Combustivel, Proprietario]
    static hasMany = [acessorios: Acessorios, fotos: Fotos]

    static constraints = {
        modelo nullable: false, blank: false
        combustivel nullable: false, blank: false
        cor nullable: false, blank: false
        proprietario nullable: false, blank: false
        valor nullable: false, blank: false
        ano nullable: false, blank: false
        comentario nullable: true, blank: true
    }
}
