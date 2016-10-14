<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale" lang="en" class="no-js">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    <link rel="stylesheet" href="{$ThemeDir}/dist/css/main.css">
	<link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>SVG Loader with GSAP | Jump Loader</title>
    <meta name="description" content="Some loaders made with SVG and GSAP" />
    <meta name="keywords" content="svg, animation, GSAP, loader, inspiration, web design" />
    <meta name="author" content="Codrops" />
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="themes/playground/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="themes/playground/css/demo.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
    <script type="text/javascript" src="themes/playground/js/greensock/minified/TweenMax.min.js"></script>
    <!--<script type="text/javascript" src="themes/playground/js/greensock/minified/plugins/DrawSVGPlugin.min.js"></script>
 <!--[if IE]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
</head>

]-->
</head>

<body class="demo-1" class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
    <% include Header %>
<div class="container">


    <div class="content">
        <div class="svg-container" id="container">
            <svg id="loader" width="100%" height="100%" viewBox="0 0 200 200" preserveAspectRatio="xMidYMid meet">
                <path id="jump" fill="none" stroke="#383845" stroke-width="10" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" d="M47.5,94.3c0-23.5,19.9-42.5,44.5-42.5s44.5,19,44.5,42.5" />
                <g stroke="#383845" stroke-width="1">
                    <ellipse id="circleL" fill="none" stroke-miterlimit="10" cx="47.2" cy="95.6" rx="10.7" ry="2.7" />
                    <ellipse id="circleR" fill="none" stroke-miterlimit="10" cx="136.2" cy="95.6" rx="10.7" ry="2.7" />
                </g>
            </svg>
        </div>
    </div>
</div>
<!-- /container -->
<script>
    (function() {
        var container = document.getElementById('container');
        var loader = document.getElementById('loader');
        var circleL = document.getElementById('circleL');
        var circleR = document.getElementById('circleR');
        var jump = document.getElementById('jump');
        var jumpRef = jump.cloneNode();

        loader.appendChild(jumpRef);

        TweenMax.set([container, loader], {
            position: 'absolute',
            top:'50%',
            left: '50%',
            xPercent: -50,
            yPercent: -50
        })

        TweenMax.set(jumpRef, {
            transformOrigin: '50% 110%',
            scaleY: -1,
            alpha: 0.05
        })

        var tl = new TimelineMax({
            repeat: -1,
            yoyo: false
        });

        tl.timeScale(3);

        tl.set([jump, jumpRef], {
            drawSVG: '0% 0%'
        })
                .set([circleL, circleR], {
                    attr: {
                        rx: 0,
                        ry: 0,
                    }
                })
                .to([jump, jumpRef], 0.4, {
                    drawSVG: '0% 30%',
                    ease: Linear.easeNone
                })
                .to(circleL, 2, {
                    attr: {
                        rx: '+=30',
                        ry: '+=10'
                    },
                    alpha: 0,
                    ease: Power1.easeOut
                }, '-=0.1')
                .to([jump, jumpRef], 1, {
                    drawSVG: '50% 80%',
                    ease: Linear.easeNone
                }, '-=1.9')
                .to([jump, jumpRef], 0.7, {
                    drawSVG: '100% 100%',
                    ease: Linear.easeNone
                }, '-=0.9')
                .to(circleR, 2, {
                    attr: {
                        rx: '+=30',
                        ry: '+=10'
                    },
                    alpha: 0,
                    ease: Power1.easeOut
                }, '-=.5')
    })();
</script>
</body>
</html>

<%-- Please move: Theme javascript (below) should be moved to mysite/code/page.php  --%>

  <div class="wrap ">
      <div class="sub-menu" >
          <div class="sub-menu__inner">
              <a href="#sTop" class="sub-menu__button">Home</a>
              <a href="#s1" class="sub-menu__button">Section 1</a>
              <a href="#s2" class="sub-menu__button">Section 2</a>
              <a href="#s3" class="sub-menu__button">Section 3</a>
              <a href="#s4" class="sub-menu__button">Section 4</a>
              <a href="#s5" class="sub-menu__button">Section 5</a>
              <a href="https://twitter.com/rabmyself" class="sub-menu__button extLink end">External Link</a>
          </div>
      </div>

      <div class="section">
          <div class="section__one">
              <div class="inner ">
                  <h1>Sectionasdasda 1 $Form</h1>
              </div>
          </div>
      </div>

    <% include Footer %>
</body>
</html>

