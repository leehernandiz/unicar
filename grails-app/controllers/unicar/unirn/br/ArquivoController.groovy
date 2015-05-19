package unicar.unirn.br



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
@Transactional(readOnly = true)
@Secured (['ROLE_CADASTRO','ROLE_ADMIN'])
class ArquivoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Arquivo.list(params), model:[arquivoInstanceCount: Arquivo.count()]
    }

    def show(Arquivo arquivoInstance) {
        respond arquivoInstance
    }

    def create() {
        respond new Arquivo(params)
    }
    def showImagem() {
        def fileInstance = Arquivo.get(params.id)
        response.outputStream.write(fileInstance.getArquivo())
        response.outputStream.flush()
    }
    @Transactional
    def save(Arquivo arquivoInstance) {
        if (arquivoInstance == null) {
            notFound()
            return
        }

        if (arquivoInstance.hasErrors()) {
            respond arquivoInstance.errors, view:'create'
            return
        }

        arquivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'arquivo.label', default: 'Arquivo'), arquivoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { respond arquivoInstance, [status: CREATED] }
        }
    }

    def edit(Arquivo arquivoInstance) {
        respond arquivoInstance
    }

    @Transactional
    def update(Arquivo arquivoInstance) {
        if (arquivoInstance == null) {
            notFound()
            return
        }

        if (arquivoInstance.hasErrors()) {
            respond arquivoInstance.errors, view:'edit'
            return
        }

        arquivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Arquivo.label', default: 'Arquivo'), arquivoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*'{ respond arquivoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Arquivo arquivoInstance) {

        if (arquivoInstance == null) {
            notFound()
            return
        }

        arquivoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Arquivo.label', default: 'Arquivo'), arquivoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'arquivo.label', default: 'Arquivo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
