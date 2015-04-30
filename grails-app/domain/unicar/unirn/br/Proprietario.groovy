package unicar.unirn.br

class Proprietario {
  //  static hasMany = [veiculos1: Veiculo]
    String descProprietario
    String cidade
    String email
    String telefones
    Date dateCreated
    Date lastUpdated
    static constraints = {
        descProprietario nullable: false, blank: false
        cidade nullable: false, blank: false
        descProprietario()
        email email: true
        telefones nullable: true, blank: true
        dateCreated()
        lastUpdated()
    }
    String toString(){ descProprietario }
}
