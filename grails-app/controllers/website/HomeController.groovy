package website

class HomeController {

    def Index() {
		render(view:"/index", model: [activePage: "homePage"]);
	}
	
	def AboutMe() {
		render(view:"/aboutMe", model: [activePage: "aboutMePage"]);
	}
	
	def ContactMe() {
		render(view: "/contactMe", model: [activePage: "contactMePage"]);
	}
	
	def Faq() {
		render(view: "/faq", model: [activePage: "faqPage"]);
	}
	
}
