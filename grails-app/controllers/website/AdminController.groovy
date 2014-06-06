package website
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AdminController {

    def index() { 
		render(view:"adminHome", model: [activePage: "adminPage"]);
	}
}
