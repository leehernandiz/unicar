package unicar.unirn.br


import grails.test.mixin.*
import spock.lang.*

@TestFor(AcessoriosController)
@Mock(Acessorios)
class AcessoriosControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.acessoriosInstanceList
        model.acessoriosInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.acessoriosInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def acessorios = new Acessorios()
        acessorios.validate()
        controller.save(acessorios)

        then: "The create view is rendered again with the correct model"
        model.acessoriosInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        acessorios = new Acessorios(params)

        controller.save(acessorios)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/acessorios/show/1'
        controller.flash.message != null
        Acessorios.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def acessorios = new Acessorios(params)
        controller.show(acessorios)

        then: "A model is populated containing the domain instance"
        model.acessoriosInstance == acessorios
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def acessorios = new Acessorios(params)
        controller.edit(acessorios)

        then: "A model is populated containing the domain instance"
        model.acessoriosInstance == acessorios
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/acessorios/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def acessorios = new Acessorios()
        acessorios.validate()
        controller.update(acessorios)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.acessoriosInstance == acessorios

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        acessorios = new Acessorios(params).save(flush: true)
        controller.update(acessorios)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/acessorios/show/$acessorios.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/acessorios/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def acessorios = new Acessorios(params).save(flush: true)

        then: "It exists"
        Acessorios.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(acessorios)

        then: "The instance is deleted"
        Acessorios.count() == 0
        response.redirectedUrl == '/acessorios/index'
        flash.message != null
    }
}
