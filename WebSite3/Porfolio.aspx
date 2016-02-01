﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Porfolio.aspx.cs" Inherits="Porfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grey Media House | Portfolio</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css' />
    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
    <script type="text/javascript">
        $(function () {

            var filterList = {

                init: function () {

                    // MixItUp plugin
                    // http://mixitup.io
                    $('#portfoliolist').mixitup({
                        targetSelector: '.portfolio',
                        filterSelector: '.filter',
                        effects: ['fade'],
                        easing: 'snap',
                        // call the hover effect
                        onMixEnd: filterList.hoverEffect()
                    });

                },

                hoverEffect: function () {

                    // Simple parallax effect
                    $('#portfoliolist .portfolio').hover(
                        function () {
                            $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
                            $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
                        },
                        function () {
                            $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
                            $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
                        }
                    );

                }

            };

            // Run the show!
            filterList.init();


        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="logo">
                    <h1><a href="/">
                        <!--<img src="images/logo.png" alt="" />-->
                        GREY MEDIA HOUSE</a></h1>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li><a href="Default.aspx">Home</a></li>
                        <li><a href="About.aspx">About Us</a></li>
                        <li class="active"><a href="Porfolio.aspx">Portfolio</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="banner">
            <div class="wrap">
                <h2>Portfolio</h2>
                <div class="clear"></div>
            </div>
        </div>
        <div class="main">
            <div class="portfolio-top">
                <%-- <div class="wrap">
                    <h3>We Create Quality Designs.</h3>
                    <h5>We Specialize in Web Design / Development and Graphic Design</h5>
                </div>--%>
            </div>
            <div class="container">
                <ul id="filters" class="clearfix">
                    <li><span class="filter active" data-filter="app design write logo web">All</span></li>
                    <li><span class="filter" data-filter="app">Web Development</span></li>
                    <li><span class="filter" data-filter="design">Web Designing</span></li>
                    <li><span class="filter" data-filter="write">Content Writing</span></li>
                    <%--<li><span class="filter" data-filter="logo">Photo</span></li>
                    <li><span class="filter" data-filter="web">App Design</span></li>--%>
                </ul>
                <div class="clear"></div>
                <div id="portfoliolist" style="" class="">
                    <div class="wrapper">
                        <div class="portfolio app mix_all" data-cat="app">
                            <div class="portfolio-wrapper">
                                <a href="http://www.modasexports.com">
                                    <img src="images/modas.jpg" alt="modasexports" /></a>
                                <div class="links">
                                    <h4><a href="http://www.modasexports.com">Moda's Exports</a></h4>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">
                                <a href="http://www.kailaspatil.com">
                                    <img src="images/kailaspatil.jpg" alt="kailaspatil" /></a>
                                <div class="links">
                                    <h4><a href="http://www.kailaspatil.com">Kailas Patil - An Athelete</a></h4>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="portfolio write design mix_all" data-cat="write" style="display: inline-block; opacity: 1;">
                            <div class="portfolio-wrapper">
                                <a href="http://www.velocrushindia.com">
                                    <img src="images/velocrush2.jpg" alt="velocrushindia" /></a>
                                <div class="links">
                                    <h4><a href="http://www.velocrushindia.com">VeloCrush India</a></h4>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer-top">
                <div class="wrap">
                    <div class="section group">
                        <div class="col_1_of_3 span_1_of_3">
                            <h3>About Us</h3>
                            <p>Grey Media House (GMH) is a fully integrated electronic, print and internet marketing communication solution provider focused on effectively servicing the needs of companies looking at product and brand promotion through print and online media.</p>
                        </div>
                        <div class="col_1_of_3 span_1_of_3">

                            <div class="social-icons">
                                <h4>Social Connecting</h4>
                                <ul>
                                    <li class="facebook"><a href="#"><span></span></a></li>
                                    <li class="google"><a href="#"><span></span></a></li>
                                    <li class="twitter"><a href="#"><span></span></a></li>
                                    <li class="linkedin"><a href="#"><span></span></a></li>
                                    <li class="youtube"><a href="#"><span></span></a></li>
                                    <li class="bloger"><a href="#"><span></span></a></li>
                                    <li class="rss"><a href="#"><span></span></a></li>
                                    <li class="dribble"><a href="#"><span></span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col_1_of_3 span_1_of_3">
                            <h3>Contact info</h3>
                            <div class="footer-list">
                                <ul>
                                    <!--<li><img src="images/address.png" alt="" /><p>Lorem ipsum dolor sit amet,consectetuer adipiscing elit, sed diam nonummy nibh<br>&nbsp;web design</p><div class="clear"></div></li>-->
                                    <!--<li><img src="images/phone.png" alt="" /><p>Phone: +1 800 258 2689<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+1 800 258 2689 </p><div class="clear"></div></li>-->
                                    <li>
                                        <img src="images/msg.png" alt="" /><p>Email: <span class="yellow"><a href="mailto:info@greymediahouse.com">info@greymediahouse.com</a></span></p>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                            <%--<div class="follow">
                                <h4>Follow Us</h4>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
                                <div class="search">
                                    <form>
                                        <input type="text" value="">
                                        <input type="submit" value="">
                                    </form>
                                </div>
                            </div>--%>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="wrap">
                    <div class="copy">
                        <p class="copy">© 2014 by <a href="http://www.greymediahouse.com" target="_blank">Grey Media House</a></p>
                    </div>
                    <div class="footer-nav">
                        <ul>
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="About.aspx">About Us</a></li>
                            <li><a href="Porfolio.aspx">Portfolio</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
