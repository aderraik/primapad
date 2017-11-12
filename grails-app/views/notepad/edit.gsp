<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Visian Systems">

    <!-- Favicon logic -->
    <asset:link rel="apple-touch-icon" sizes="57x57" href="apple-icon-57x57.png"/>
    <asset:link rel="apple-touch-icon" sizes="60x60" href="apple-icon-60x60.png"/>
    <asset:link rel="apple-touch-icon" sizes="72x72" href="apple-icon-72x72.png"/>
    <asset:link rel="apple-touch-icon" sizes="76x76" href="apple-icon-76x76.png"/>
    <asset:link rel="apple-touch-icon" sizes="114x114" href="apple-icon-114x114.png"/>
    <asset:link rel="apple-touch-icon" sizes="120x120" href="apple-icon-120x120.png"/>
    <asset:link rel="apple-touch-icon" sizes="144x144" href="apple-icon-144x144.png"/>
    <asset:link rel="apple-touch-icon" sizes="152x152" href="apple-icon-152x152.png"/>
    <asset:link rel="apple-touch-icon" sizes="180x180" href="apple-icon-180x180.png"/>
    <asset:link rel="icon" type="image/png" sizes="192x192"  href="android-icon-192x192.png"/>
    <asset:link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png"/>
    <asset:link rel="icon" type="image/png" sizes="96x96" href="favicon-96x96.png"/>
    <asset:link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png"/>
    <asset:link rel="manifest" href="manifest.json"/>
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <meta name="layout" content="notepad" />
    <g:set var="entityName" value="${message(code: 'notepad.label', default: 'Notepad')}" />

    <title>Primapad - ${request.forwardURI}</title>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet src="bootstrap.css"/>

    <!-- Custom styles for this template -->
    <asset:stylesheet src="main.css"/>

    <!-- Fonts from Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,900' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

    <asset:javascript src="application.js"/>
    <asset:javascript src="spring-websocket" />

    <script type="text/javascript">

        var delay = (function(){
            var timer = 0;
            return function(callback, ms){
                clearTimeout (timer);
                timer = setTimeout(callback, ms);
            };
        })();

        $(function() {
            var socket = new SockJS("${createLink(uri: '/stomp')}");
            var client = Stomp.over(socket);
            var subscription = null;

            client.connect({}, function() {
                subscription = client.subscribe("/topic/updateContent", function(message) {
                    $("#conteudo").val(message.body);
                });
            });

            $("#conteudo").on('keyup paste',function() {
                subscription.unsubscribe();
                var valor = $("#conteudo").val();
                client.send("/app/updateContent", {}, JSON.stringify({
                    'chave': '<%=params.chave%>',
                    'conteudo': $("#conteudo").val()}));

                delay(function(){
                    subscription = client.subscribe("/topic/updateContent", function(message) {
                        $("#conteudo").val(message.body);
                    });
                }, 500);
            });
        });
    </script>
    <style type="text/css">
    .txtArea {
        width: 100%;
        height: 100%;
        border: 1px solid;
        box-sizing: border-box;
    }
    </style>
</head>

<body>
    <!-- Title Bar -->
    <div class="header">
        <nav class="navbar navbar-default navbar-fixed-top navbar-notepad" role="navigation">
            <div id="logo">
                <div class="container">
                    <a href="/">
                        <asset:image src="logo.png" width="36" style="margin-right: 5px;" alt=""/>
                        <b><span style="color: #fff;">PRIMAPAD</span></b>
                    </a>
                    <span style="color: #fff;"> - your free online notepad</span>
                </div>
            </div>
        </nav>
    </div>

    <!-- Notepad -->
    <div id="edit-notepad" class="container notepad" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${this.notepad}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.notepad}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form resource="${this.notepad}" method="PUT">
            <g:hiddenField name="version" value="${this.notepad?.version}" />
            <fieldset class="form">

                <g:textArea name="conteudo" value="${this.notepad?.conteudo}" id="conteudo" rows="18" class="txtArea"/>
            </fieldset>
        </g:form>
    </div>

    <!-- Footer -->
    <div class="container">
        <div align="center">
            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <!-- Primapad - Ads -->
            <ins class="adsbygoogle"
                 style="display:inline-block;width:728px;height:90px"
                 data-ad-client="ca-pub-8224427185214297"
                 data-ad-slot="5383832705"></ins>
            <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>
        <hr>
        <p class="centered">© <a href="http://www.visiansystems.com">Visian Systems</a> <g:formatDate format="yyyy" date="${new Date()}"/>. All Rights Reserved.</p>
    </div>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

</body>
</html>
