package com.demo

import grails.web.mapping.LinkGenerator

class SpaceController {

    DoctorWhoUri doctorWhoUri
    LinkGenerator grailsLinkGenerator

    def index(){
        new DoctorWho()
    }

    def uri(){
        def uri = grailsLinkGenerator.link(controller: 'space', action: 'lost')
        doctorWhoUri.forward(uri: uri)
    }

    def time(){
        render "You are somewhere in time"
    }

    def lost() {
        render "You are now lost in space"
    }
}
