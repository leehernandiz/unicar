package unicar.unirn.br

class Montadora {
   //static hasMany = [modelos1: Modelos]
    String descMontadora
    static constraints = {
        descMontadora nullable: false, blank: false
        descMontadora()
    }
    String toString(){ descMontadora }
}
