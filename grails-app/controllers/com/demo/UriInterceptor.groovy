package com.demo


class UriInterceptor {

    UriInterceptor(){
        match(controller: 'tardis')
    }

    boolean before() {
        forward uri: "/v0.1/lost", params: [one: "two"]
        false
    }
}
