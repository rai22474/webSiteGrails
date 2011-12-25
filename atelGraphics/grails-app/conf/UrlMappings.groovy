class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
			
		}

		"/"(view:"/index")
		"500"(view:'/error')
		"/products"(view:"/users/products")
		"/support"(view:"/users/support")
		"/home"(view:"/index")
		"/admin"(view:"/admin/admin")
		"/downloads"(view:"/users/downloads")
		"/aboutUs"(view:"/users/aboutUs")
	}
}
