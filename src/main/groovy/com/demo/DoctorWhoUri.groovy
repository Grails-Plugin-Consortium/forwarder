package com.demo

import grails.artefact.controller.support.RequestForwarder
import grails.web.mapping.LinkGenerator
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Component

@Component
class DoctorWhoUri implements RequestForwarder {

	@Autowired
	LinkGenerator grailsLinkGenerator

	String forward() {
		forward(uri: grailsLinkGenerator.link(controller: 'space', action: 'space'))
	}

	String uri() {
		forward(uri: grailsLinkGenerator.link(uri: '/space/space'))
	}

}
