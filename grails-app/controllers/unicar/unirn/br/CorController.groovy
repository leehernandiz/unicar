package unicar.unirn.br



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Cor.list(params), model:[corInstanceCount: Cor.count()]
    }

    def show(Cor corInstance) {
        respond corInstance
    }

    def create() {
        respond new Cor(params)
    }

    @Transactional
    def save(Cor corInstance) {
        if (corInstance == null) {
            notFound()
            return
        }

        if (corInstance.hasErrors()) {
            respond corInstance.errors, view:'create'
            return
        }

        corInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'cor.label', default: 'Cor'), corInstance.id])
                redirect corInstance
            }
            '*' { respond corInstance, [status: CREATED] }
        }
    }

    def edit(Cor corInstance) {
        respond corInstance
    }

    @Transactional
    def update(Cor corInstance) {
        if (corInstance == null) {
            notFound()
            return
        }

        if (corInstance.hasErrors()) {
            respond corInstance.errors, view:'edit'
            return
        }

        corInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Cor.label', default: 'Cor'), corInstance.id])
                redirect corInstance
            }
            '*'{ respond corInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Cor corInstance) {

        if (corInstance == null) {
            notFound()
            return
        }

        corInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Cor.label', default: 'Cor'), corInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'cor.label', default: 'Cor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
