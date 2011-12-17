import com.atelgraphics.domain.security.*

class BootStrap {

    def init = { servletContext ->
		
		def roleAdministration = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def roleUser = new Role(authority: 'ROLE_USER').save(flush: true)
		
		//String password = springSecurityService.encodePassword('password')
		def userTest = new User(username: 'me', enabled: true, password: 'password')
		userTest.save(flush: true)
		
		UserRole.create userTest, roleAdministration, true
	
		def userTest1 = new User(username: 'rai', enabled: true, password: 'password')
		userTest1.save(flush: true)
		
		UserRole.create userTest1, roleUser, true

			
    }
	
    def destroy = {
    }
}
