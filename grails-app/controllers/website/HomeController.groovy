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
		ArrayList<FaqQuestion> questions = new ArrayList<FaqQuestion>(FaqQuestion.list());
		render(view: "/faq", model: [activePage: "faqPage", questions: questions]);
	}
	
}
