package unicar.unirn.br


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CombustivelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Combustivel.list(params), model: [combustivelInstanceCount: Combustivel.count()]
    }

    def show(Combustivel combustivelInstance) {
        respond combustivelInstance
    }

    def create() {
        respond new Combustivel(params)
    }

    @Transactional
    def save(Combustivel combustivelInstance) {
        if (combustivelInstance == null) {
            notFound()
            return
        }

        if (combustivelInstance.hasErrors()) {
            respond combustivelInstance.errors, view: 'create'
            return
        }

        combustivelInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'combustivel.label', default: 'Combustivel'), combustivelInstance.id])
                redirect combustivelInstance
            }
            '*' { respond combustivelInstance, [status: CREATED] }
        }
    }

    def edit(Combustivel combustivelInstance) {
        respond combustivelInstance
    }

    @Transactional
    def update(Combustivel combustivelInstance) {
        if (combustivelInstance == null) {
            notFound()
            return
        }

        if (combustivelInstance.hasErrors()) {
            respond combustivelInstance.errors, view: 'edit'
            return
        }

        combustivelInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Combustivel.label', default: 'Combustivel'), combustivelInstance.id])
                redirect combustivelInstance
            }
            '*' { respond combustivelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Combustivel combustivelInstance) {

        if (combustivelInstance == null) {
            notFound()
            return
        }

        combustivelInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Combustivel.label', default: 'Combustivel'), combustivelInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'combustivel.label', default: 'Combustivel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
