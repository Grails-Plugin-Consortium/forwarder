<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Welcome to Grails</title>
        <style type="text/css" media="screen">
            #status {
                background-color: #eee;
                border: .2em solid #fff;
                margin: 2em 2em 1em;
                padding: 1em;
                width: 12em;
                float: left;
                -moz-box-shadow: 0px 0px 1.25em #ccc;
                -webkit-box-shadow: 0px 0px 1.25em #ccc;
                box-shadow: 0px 0px 1.25em #ccc;
                -moz-border-radius: 0.6em;
                -webkit-border-radius: 0.6em;
                border-radius: 0.6em;
            }

            #status ul {
                font-size: 0.9em;
                list-style-type: none;
                margin-bottom: 0.6em;
                padding: 0;
            }

            #status li {
                line-height: 1.3;
            }

            #status h1 {
                text-transform: uppercase;
                font-size: 1.1em;
                margin: 0 0 0.3em;
            }

            #page-body {
                margin: 2em 1em 1.25em 18em;
            }

            h2 {
                margin-top: 1em;
                margin-bottom: 0.3em;
                font-size: 1em;
            }

            p {
                line-height: 1.5;
                margin: 0.25em 0;
            }

            #controller-list ul {
                list-style-position: inside;
            }

            #controller-list li {
                line-height: 1.3;
                list-style-position: inside;
                margin: 0.25em 0;
            }

            @media screen and (max-width: 480px) {
                #status {
                    display: none;
                }

                #page-body {
                    margin: 0 1em 1em;
                }

                #page-body h1 {
                    margin-top: 0;
                }
            }
        </style>
    </head>
    <body>
        <a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div id="status" role="complementary">
            <h1>Application Status</h1>
            <ul>
                <li>Environment: ${grails.util.Environment.current.name}</li>
                <li>App profile: ${grailsApplication.config.grails?.profile}</li>
                <li>App version: <g:meta name="info.app.version"/></li>
                <li>Grails version: <g:meta name="info.app.grailsVersion"/></li>
                <li>Groovy version: ${GroovySystem.getVersion()}</li>
                <li>JVM version: ${System.getProperty('java.version')}</li>
                <li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
            </ul>
            <h1>Artefacts</h1>
            <ul>
                <li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
                <li>Domains: ${grailsApplication.domainClasses.size()}</li>
                <li>Services: ${grailsApplication.serviceClasses.size()}</li>
                <li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
            </ul>
            <h1>Installed Plugins</h1>
            <ul>
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li>${plugin.name} - ${plugin.version}</li>
                </g:each>
            </ul>
        </div>
        <div id="page-body" role="main">
            <g:link controller="tardis" action="index">URI Redirect using interceptor</g:link><BR />
            <g:link controller="space" action="index">URI Redirect using new object</g:link><BR />
            <g:link controller="space" action="uri">URI Redirect using spring bean</g:link><BR />
            <g:link controller="space" action="uri2">URI Redirect using spring bean 2</g:link><BR />
            <g:link controller="space" action="uri3">URI Redirect using spring bean 3</g:link><BR />
            <g:link controller="space" action="uriAbsolute">URI Redirect using custom uri absolute</g:link><BR />
            <g:link controller="space" action="uriRelative">URI Redirect using custom uri relative</g:link><BR />
            <g:link controller="space" action="uriAbsoluteBase">URI Redirect using custom uri absolute with base version</g:link><BR />
            <g:link controller="space" action="uriRelativeBase">URI Redirect using custom uri relative with base version (will break)</g:link><BR />

            <p>
            Url Mappings:
                <pre>
"/"(view: '/index')
"/space"(controller: 'space', action: 'index')
"/uri"(controller: 'space', action: 'uri')
"/uri2"(controller: 'space', action: 'uri2')
"/uri3"(controller: 'space', action: 'uri3')
"/uri4"(controller: 'space', action: 'uri4')
"/lost"(controller: 'space', action: 'space')
"/$version/lost"(controller: 'space', action: 'space')
"500"(view: '/error')
"404"(view: '/notFound')
        </pre>
            </p>
        </div>
    </body>
</html>
