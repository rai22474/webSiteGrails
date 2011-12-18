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
		"/forum"(view:"/users/forum")
		"/home"(view:"/index")
		"/admin"(view:"/admin/admin")
	}
}
