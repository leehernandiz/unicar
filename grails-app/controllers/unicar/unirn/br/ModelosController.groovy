package unicar.unirn.br



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured (['ROLE_ADMIN'])
class ModelosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Modelos.list(params), model:[modelosInstanceCount: Modelos.count()]
    }

    def show(Modelos modelosInstance) {
        respond modelosInstance
    }

    def create() {
        respond new Modelos(params)
    }

    @Transactional
    def save(Modelos modelosInstance) {
        if (modelosInstance == null) {
            notFound()
            return
        }

        if (modelosInstance.hasErrors()) {
            respond modelosInstance.errors, view:'create'
            return
        }

        modelosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'modelos.label', default: 'Modelos'), modelosInstance.id])
                redirect modelosInstance
            }
            '*' { respond modelosInstance, [status: CREATED] }
        }
    }

    def edit(Modelos modelosInstance) {
        respond modelosInstance
    }

    @Transactional
    def update(Modelos modelosInstance) {
        if (modelosInstance == null) {
            notFound()
            return
        }

        if (modelosInstance.hasErrors()) {
            respond modelosInstance.errors, view:'edit'
            return
        }

        modelosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Modelos.label', default: 'Modelos'), modelosInstance.id])
                redirect modelosInstance
            }
            '*'{ respond modelosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Modelos modelosInstance) {

        if (modelosInstance == null) {
            notFound()
            return
        }

        modelosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Modelos.label', default: 'Modelos'), modelosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'modelos.label', default: 'Modelos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
