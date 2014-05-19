package website

class DevelopingWithGrailsController {

    def index() { 
		render(view: "index", model: [activePage: "developingWithGrailsPage"]);
	}
}
