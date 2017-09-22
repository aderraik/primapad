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

    <title>Justapad - Your free online notepad</title>

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
    %{--<g:layoutHead/>--}%
</head>

<body>
    <!-- Title Bar -->
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    <asset:image src="logo.png" width="42" alt=""/>
                    <b>JUSTAPAD</b>
                </a>
            </div>
        </div>
    </div>

    <div id="headerwrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Take notes anywhere, anytime & in any device<br/></h1>
                    <div class="row top-buffer"></div>
                    <h2><g:layoutBody/></h2>
                    <div class="row top-buffer"></div>
                </div>


                    <div class="col-lg-6">
                    <asset:image src="ipad-hand.png" class="img-responsive"/>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row mt centered">
            <div class="col-lg-6 col-lg-offset-3">
                <h1>Your free online notepad<br/>Looks Wonderful Now.</h1>
                <h3>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h3>
            </div>
        </div>

        <div class="row mt centered">
            <div class="col-lg-4">
                <asset:image src="ser01.png" width="180" alt=""/>
                <h4>No login required</h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
            </div>

            <div class="col-lg-4">
                <asset:image src="ser02.png" width="180" alt=""/>
                <h4>Your note is auto-saved</h4>
                <p>Never lose your notes againLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
            </div>

            <div class="col-lg-4">
                <asset:image src="ser03.png" width="180" alt=""/>
                <h4>Available in any device</h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row mt centered">
            <div class="col-lg-6 col-lg-offset-3">
                <h1>Justapad is Everywhere</h1>
                <h3>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h3>
            </div>
        </div>

        <div class="row mt centered">
            <div class="col-lg-6 col-lg-offset-3">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <asset:image src="p01.png"/>
                        </div>
                        <div class="item">
                            <asset:image src="p02.png"/>
                        </div>
                        <div class="item">
                            <asset:image src="p03.png"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <hr>
        <p class="centered">© <a href="http://www.visiansystems.com">Visian Systems</a> <g:formatDate format="yyyy" date="${new Date()}"/>. All Rights Reserved.</p>
    </div>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
