package unicar.unirn.br


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MontadoraController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Montadora.list(params), model: [montadoraInstanceCount: Montadora.count()]
    }

    def show(Montadora montadoraInstance) {
        respond montadoraInstance
    }

    def create() {
        respond new Montadora(params)
    }

    @Transactional
    def save(Montadora montadoraInstance) {
        if (montadoraInstance == null) {
            notFound()
            return
        }

        if (montadoraInstance.hasErrors()) {
            respond montadoraInstance.errors, view: 'create'
            return
        }

        montadoraInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'montadora.label', default: 'Montadora'), montadoraInstance.id])
                redirect montadoraInstance
            }
            '*' { respond montadoraInstance, [status: CREATED] }
        }
    }

    def edit(Montadora montadoraInstance) {
        respond montadoraInstance
    }

    @Transactional
    def update(Montadora montadoraInstance) {
        if (montadoraInstance == null) {
            notFound()
            return
        }

        if (montadoraInstance.hasErrors()) {
            respond montadoraInstance.errors, view: 'edit'
            return
        }

        montadoraInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Montadora.label', default: 'Montadora'), montadoraInstance.id])
                redirect montadoraInstance
            }
            '*' { respond montadoraInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Montadora montadoraInstance) {

        if (montadoraInstance == null) {
            notFound()
            return
        }

        montadoraInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Montadora.label', default: 'Montadora'), montadoraInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'montadora.label', default: 'Montadora'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
