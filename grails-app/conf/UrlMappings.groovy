class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index", controller:"home", action:"index")
		"/aboutMe"(view:"/aboutMe", controller:"home", action:"aboutMe")
		"/contactMe"(view:"/contactMe", controller:"home", action:"contactMe")
		"/faq"(view:"/faq", controller:"home", action:"faq")
        "500"(view:'/error')
	}
}
