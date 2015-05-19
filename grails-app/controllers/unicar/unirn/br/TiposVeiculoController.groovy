package unicar.unirn.br


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured (['ROLE_ADMIN'])
class TiposVeiculoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TiposVeiculo.list(params), model: [tiposVeiculoInstanceCount: TiposVeiculo.count()]
    }

    def show(TiposVeiculo tiposVeiculoInstance) {
        respond tiposVeiculoInstance
    }

    def create() {
        respond new TiposVeiculo(params)
    }

    @Transactional
    def save(TiposVeiculo tiposVeiculoInstance) {
        if (tiposVeiculoInstance == null) {
            notFound()
            return
        }

        if (tiposVeiculoInstance.hasErrors()) {
            respond tiposVeiculoInstance.errors, view: 'create'
            return
        }

        tiposVeiculoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tiposVeiculo.label', default: 'TiposVeiculo'), tiposVeiculoInstance.id])
                redirect tiposVeiculoInstance
            }
            '*' { respond tiposVeiculoInstance, [status: CREATED] }
        }
    }

    def edit(TiposVeiculo tiposVeiculoInstance) {
        respond tiposVeiculoInstance
    }

    @Transactional
    def update(TiposVeiculo tiposVeiculoInstance) {
        if (tiposVeiculoInstance == null) {
            notFound()
            return
        }

        if (tiposVeiculoInstance.hasErrors()) {
            respond tiposVeiculoInstance.errors, view: 'edit'
            return
        }

        tiposVeiculoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TiposVeiculo.label', default: 'TiposVeiculo'), tiposVeiculoInstance.id])
                redirect tiposVeiculoInstance
            }
            '*' { respond tiposVeiculoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TiposVeiculo tiposVeiculoInstance) {

        if (tiposVeiculoInstance == null) {
            notFound()
            return
        }

        tiposVeiculoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TiposVeiculo.label', default: 'TiposVeiculo'), tiposVeiculoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tiposVeiculo.label', default: 'TiposVeiculo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
