<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Website-design.aspx.cs" Inherits="WebDesign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grey Media House | Website Design</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Add fancyBox main JS and CSS files -->
    <script src="js/jquery.min.js"></script>
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
                        <li><a href="Porfolio.aspx">Portfolio</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="banner">
            <div class="wrap">
                <h2>Website Design</h2>
                <div class="clear"></div>
            </div>
        </div>
        <div class="main">
            <div class="project-wrapper">
                <div class="wrap">
                    <div class="section group">

                        <div class="contserv">
                            <%-- <h2>Welcome to our Team</h2>--%>
                            <h3>Design is the process of collecting ideas, and aesthetically arranging and implementing them, guided by certain principles for a specific purpose. Web design is a similar process of creation, with the intention of presenting the content on electronic web pages, which the end-users can access through the internet with the help of a web browser.</h3>

                            <div class="section group example">

                                <div class="col_1_of_2 span_1_of_2">
                                    <img class="services" alt="dreamviewer" src="images/dreamweaver.png" width="100px" height="100px" />
                                    <div class="servtext">
                                        <h3>Web Designing</h3>
                                        <p>Web designing entails the task of designing HTML driven web pages so that they can be displayed easily over the Internet.</p>
                                    </div>
                                </div>
                                <div class="col_1_of_2 span_1_of_2">
                                    <img class="services" alt="ai" src="images/Ai.png" />
                                    <div class="servtext">
                                        <h3>Logo Designing</h3>
                                        <p>Logo designing is a creative art that in this generation is done with the aid of definitive software tools. A logo is a distinctive representation of a company and should be visually appealing. </p>
                                    </div>
                                </div>
                                <div class="col_1_of_2 span_1_of_2">
                                    <img class="services" alt="dreamviewer" src="images/ps.png" />
                                    <div class="servtext">
                                        <h3>Graphic Designing</h3>
                                        <p>Graphic design is the methodology of visual communication, and problem-solving through the use of type, space and image.</p>
                                    </div>
                                </div>
                                <div class="col_1_of_2 span_1_of_2">
                                    <img class="services" alt="ai" src="images/psd-html.png" />
                                    <div class="servtext">
                                        <h3>PSD to HTML</h3>
                                        <p>PSD to HTML conversion is a latest trend in the web designing domain and neophytes are increasingly relying on this technique to create dynamic websites that are flashy as well as functional at the same time.</p>
                                    </div>
                                </div>
                                <div class="col_1_of_2 span_1_of_2">
                                    <img class="services" alt="ai" src="images/responsive.png" />
                                    <div class="servtext">
                                        <h3>Responsive Website Designing</h3>
                                        <p>Responsive web design is an approach to web design aimed at crafting sites to provide an optimal viewing experience—easy reading and navigation with a minimum of resizing, panning, and scrolling—across a wide range of devices.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>

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
