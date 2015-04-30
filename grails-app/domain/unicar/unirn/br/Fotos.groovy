package unicar.unirn.br

class Fotos {
    byte[] image
    String nomeImagem
    String conteudoImagem
    static constraints = {
        image nullable: false, blank: false, maxSize: 1024 * 1024 * 20; //20mb
        nomeImagem nullable: true, blank: true
        conteudoImagem nullable: true, blank: true
    }
}
