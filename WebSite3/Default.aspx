<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagName="uc" TagPrefix="uc1" Src="~/UserControls/Home/Banner.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grey Media House | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="A Media Planning and Web Developement Company" />
    <meta name="keywords" content="Media Planning,website designing,website developement,content writing" />
    <link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-56562879-1', 'auto');
        ga('send', 'pageview');

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <div class="wrap">
                <div class="logo">
                    <h1><a href="/">GREY MEDIA HOUSE</a></h1>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="Default.aspx">Home</a></li>
                        <li><a href="About.aspx">About Us</a></li>
                        <li><a href="Porfolio.aspx">Portfolio</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div>
            <uc1:uc ID="uc2" runat="server" />
        </div>
        <!---//End-da-slider----->
        <div class="main">
            <div class="content-top">
                <div class="wrap">
                    <h3>Our Services</h3>
                    <h5>We Specialize in Media Planning / Web Development</h5>
                    <div class="section group">
                        <div class="col_1_of_4 span_1_of_4">
                            <a href="Media-planning.aspx">
                                <div class="grid1">
                                    <img src="images/icon5.png" alt="media-planning" width="120" />
                                    <h4>Media Planning</h4>
                                </div>
                            </a>
                            <%--<div class="desc">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
                            </div>--%>
                        </div>
                        <div class="col_1_of_4 span_1_of_4">
                            <a href="Website-development.aspx">
                                <div class="grid1">
                                    <img src="images/icon1.png" alt="web-developement" />
                                    <h4>Web development</h4>
                                </div>
                            </a>
                            <%--<div class="desc">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
                            </div>--%>
                        </div>
                        <div class="col_1_of_4 span_1_of_4">
                            <a href="Website-design.aspx">
                                <div class="grid1">
                                    <img src="images/icon2.png" alt="web-design" />
                                    <h4>Web design</h4>
                                </div>
                            </a>
                            <%--<div class="desc">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
                            </div>--%>
                        </div>
                        <div class="col_1_of_4 span_1_of_4">
                            <a href="Content-writing.aspx">
                                <div class="grid1">
                                    <img src="images/icon3.png" alt="content-writing" />
                                    <h4>Content Writing</h4>
                                </div>
                            </a>
                            <%--<div class="desc">
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
                            </div>--%>
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
                                    <li>
                                        <img src="images/msg.png" alt="" /><p>Email: <span class="yellow"><a href="mailto:info@greymediahouse.com">info@greymediahouse.com</a></span></p>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
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
