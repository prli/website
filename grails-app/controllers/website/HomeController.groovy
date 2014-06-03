package website

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class HomeController {

    def index() {
		render(view:"/index", model: [activePage: "homePage"]);
	}
	
	def aboutMe() {
		render(view:"/aboutMe", model: [activePage: "aboutMePage"]);
	}
	
	def contactMe() {
		render(view: "/contactMe", model: [activePage: "contactMePage"]);
	}
	
	def faq() {
		render(view: "/faq", model: [activePage: "faqPage", questions: FaqQuestion.list()]);
	}
	
}
