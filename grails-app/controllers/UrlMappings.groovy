class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?" {
			constraints {
				// apply constraints here
			}
		}

		"/"(view: '/index')
		"/space"(controller: 'space', action: 'index')
		"/uri"(controller: 'space', action: 'uri')
		"/uri2"(controller: 'space', action: 'uri2')
		"/uri3"(controller: 'space', action: 'uri3')
		"500"(view: '/error')
		"404"(view: '/notFound')
	}
}
