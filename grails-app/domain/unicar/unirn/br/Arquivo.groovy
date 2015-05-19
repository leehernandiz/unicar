package unicar.unirn.br

class Arquivo {

   // static belongsTo = [Veiculo]
    String nome
    String contentType;
    byte[] arquivo


    static constraints = {
        nome(blank:false)
        contentType()
        arquivo()


    }


    String toString(){
        return nome
    }

}
