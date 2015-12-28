package com.demo

import grails.web.mapping.LinkGenerator
import groovy.util.logging.Slf4j

@Slf4j
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

    def uriAbsolute(){
        def uri = grailsLinkGenerator.link(uri: '/lost')
        log.info("uri: $uri")
        doctorWhoUri.forward(uri: uri)
    }

    def uriAbsoluteBase(){
        def uri = grailsLinkGenerator.link(uri: '/v0.1/lost')
        log.info("uri: $uri")
        doctorWhoUri.forward(uri: uri)
    }


    //***** These produce a 404 due to not being absolute / but this seems WAD.
    def uriRelativeBase(){
        def uri = grailsLinkGenerator.link(uri: 'v0.1/lost')
        log.info("uri: $uri")
        doctorWhoUri.forward(uri: uri)
    }
    //*****

    def uriRelative(){
        def uri = grailsLinkGenerator.link(uri: 'lost')
        log.info("uri: $uri")
        doctorWhoUri.forward(uri: uri)
    }


    def time(){
        render "You are in time"
    }

    def space() {
        log.info "Param one: ${params.one}"
        render "You are now lost in space"
    }
}
