package com.demo

import grails.artefact.controller.support.RequestForwarder

class DoctorWho implements RequestForwarder {
	DoctorWho() {
		forward(controller: "space", action: "space")
	}
}
