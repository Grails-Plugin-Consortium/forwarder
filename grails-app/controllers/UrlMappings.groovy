class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'space', action: 'index')
        "/uri"(controller: 'space', action: 'uri')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
