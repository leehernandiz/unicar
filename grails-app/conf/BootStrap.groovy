import br.com.seguranca.Papel
import br.com.seguranca.Usuario
import br.com.seguranca.UsuarioPapel

class BootStrap {

    def init = { servletContext ->
            def adminRole = new Papel(autorithy: 'ROLE_ADMIN').save(flush: true)
            def userRole = new Papel(autorithy: 'ROLE_ADMIN').save(flush: true)

            def testUser = new Usuario(username: 'unicar',password: 'unicar')
                testUser.save(flush: true)

            UsuarioPapel.create testUser, adminRole,true
            //assert Usuario.count() == 1
            //assert Papel.count() == 1
            //assert UsuarioPapel.count == 0
    }
    def destroy = {
    }
}
