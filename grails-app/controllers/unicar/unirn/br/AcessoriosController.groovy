package unicar.unirn.br


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured (['ROLE_CADASTRO','ROLE_ADMIN'])
class AcessoriosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Acessorios.list(params), model: [acessoriosInstanceCount: Acessorios.count()]
    }

    def show(Acessorios acessoriosInstance) {
        respond acessoriosInstance
    }


    def create() {

        respond new Acessorios(params)
    }

    @Transactional
    def save(Acessorios acessoriosInstance) {
        if (acessoriosInstance == null) {
            notFound()
            return
        }

        if (acessoriosInstance.hasErrors()) {
            respond acessoriosInstance.errors, view: 'create'
            return
        }

        acessoriosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'acessorios.label', default: 'Acessorios'), acessoriosInstance.id])
                redirect acessoriosInstance
            }
            '*' { respond acessoriosInstance, [status: CREATED] }
        }
    }

    def edit(Acessorios acessoriosInstance) {
        respond acessoriosInstance
    }

    @Transactional
    def update(Acessorios acessoriosInstance) {
        if (acessoriosInstance == null) {
            notFound()
            return
        }

        if (acessoriosInstance.hasErrors()) {
            respond acessoriosInstance.errors, view: 'edit'
            return
        }

        acessoriosInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Acessorios.label', default: 'Acessorios'), acessoriosInstance.id])
                redirect acessoriosInstance
            }
            '*' { respond acessoriosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Acessorios acessoriosInstance) {

        if (acessoriosInstance == null) {
            notFound()
            return
        }

        acessoriosInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Acessorios.label', default: 'Acessorios'), acessoriosInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'acessorios.label', default: 'Acessorios'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
