package unicar.unirn.br

class Arquivo {

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
