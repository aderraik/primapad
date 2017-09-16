<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />

    <title><g:layoutTitle default="Grails"/></title>

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
    <g:layoutHead/>
</head>

<body>
    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" href="#">
                    <asset:image src="logo.png" width="32" alt=""/>
                    <b>JUSTAPAD</b>
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Already a member?</a></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

    <div id="headerwrap">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Take notes anywhere, anytime & in any device<br/></h1>
                    <g:layoutBody/>
                </div><!-- /col-lg-6 -->
                <div class="col-lg-6">
                    <asset:image src="ipad-hand.png" class="img-responsive"/>
                    %{--<img class="img-responsive" src="assets/img/ipad-hand.png" alt="">--}%
                </div><!-- /col-lg-6 -->

            </div><!-- /row -->
        </div><!-- /container -->
    </div><!-- /headerwrap -->

    <div class="container">
        <div class="row mt centered">
            <div class="col-lg-6 col-lg-offset-3">
                <h1>Your free online notepad<br/>Looks Wonderful Now.</h1>
                <h3>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h3>
            </div>
        </div><!-- /row -->

        <div class="row mt centered">
            <div class="col-lg-4">
                <asset:image src="ser01.png" width="180" alt=""/>
                %{--<img src="assets/img/ser01.png" width="180" alt="">--}%
                <h4>No login required</h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
            </div><!--/col-lg-4 -->

            <div class="col-lg-4">
                <asset:image src="ser02.png" width="180" alt=""/>
                %{--<img src="assets/img/ser02.png" width="180" alt="">--}%
                <h4>Your note is auto-saved</h4>
                <p>Never lose your notes againLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
            </div><!--/col-lg-4 -->

            <div class="col-lg-4">
                <asset:image src="ser03.png" width="180" alt=""/>
                %{--<img src="assets/img/ser03.png" width="180" alt="">--}%
                <h4>Available in any device</h4>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>

            </div><!--/col-lg-4 -->
        </div><!-- /row -->
    </div><!-- /container -->

    <div class="container">
        <div class="row mt centered">
            <div class="col-lg-6 col-lg-offset-3">
                <h1>Flatty is for Everyone.</h1>
                <h3>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</h3>
            </div>
        </div><!-- /row -->

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
                            %{--<img src="assets/img/p01.png" alt="">--}%
                        </div>
                        <div class="item">
                            <asset:image src="p02.png"/>
                            %{--<img src="assets/img/p02.png" alt="">--}%
                        </div>
                        <div class="item">
                            <asset:image src="p03.png"/>
                            %{--<img src="assets/img/p03.png" alt="">--}%
                        </div>
                    </div>
                </div>
            </div><!-- /col-lg-8 -->
        </div><!-- /row -->
    </div><! --/container -->

    <div class="container">
        <hr>
        <p class="centered">Created by Visian Systems - 2017</p>
    </div><!-- /container -->

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
