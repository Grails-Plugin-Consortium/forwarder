package com.demo

import grails.web.mapping.LinkGenerator

class SpaceController {

    DoctorWhoUri doctorWhoUri
    LinkGenerator grailsLinkGenerator

    def index(){
        new DoctorWho()
    }

    def uri(){
        def uri = grailsLinkGenerator.link(controller: 'space', action: 'space')
        doctorWhoUri.forward(uri: uri)
    }

    def uri2(){
        doctorWhoUri.forward()
    }

    def uri3(){
        doctorWhoUri.uri()
    }

    def time(){
        render "You are now lost in time"
    }

    def space() {
        render "You are now lost in space"
    }
}
