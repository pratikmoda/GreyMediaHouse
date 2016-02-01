<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grey Media House | Contact</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='http://fonts.googleapis.com/css?family=Karla' rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
   
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
                        <li class="active"><a href="Contact.aspx">Contact</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="banner">
            <div class="wrap">
                <h2>Contact</h2>
                <div class="clear"></div>
            </div>
        </div>
        <div class="main">
            <div class="project-wrapper">
                <%--<div class="map">
                    <iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
                    <br>
                    <small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color: #666; text-align: left; font-size: 12px"></a></small>
                </div>--%>
                <div class="wrap">
                    <div class="contact">
                        <div class="cont span_2_of_contact">

                            <h5 class="leave">Send Us A Message</h5>
                            <div class="clear"></div>
                            <div>
                                <div class="contact-to">
                                    <input id="txtName" runat="server" type="text" class="text" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}" />
                                    <input id="txtEmail" runat="server" type="text" class="text" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}" style="margin-left: 10px" />
                                    <input id="txtSubject" runat="server" type="text" class="text" value="Subject..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject...';}" style="margin-left: 10px" />
                                </div>
                                <div class="text2">
                                    <textarea id="txtMessage" runat="server" value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}"></textarea>
                                </div>
                                <div>

                                    <asp:Button ID="btnSubmit" runat="server" Text="Send a Message" CssClass="submit" OnClick="btnSubmit_Click" />

                                </div>
                            </div>
                            <div class="content-top" id="divThanku" runat="server">
                                <h5>We will contact you soon...</h5>
                            </div>
                        </div>
                        <div class="lsidebar span_1_of_about">
                            <h5 class="leave">Contact Info</h5>
                            <div class="clear"></div>
                            <div class="contact-list">
                                <ul>
                                    <%--<li>
                                        <img src="images/address.png" alt=""><p>Lorem ipsum dolor sit amet, adipiscing elit, sed diam nonummy nibh</p>
                                        <div class="clear"></div>
                                    </li>
                                    <li>
                                        <img src="images/phone.png" alt=""><p>
                                            Phone: +1 800 258 2689<br>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+1 800 258 2689
                                        </p>
                                        <div class="clear"></div>
                                    </li>--%>
                                    <li>
                                        <img src="images/msg.png" alt="" /><p>Email: <span class="yellow1"><a href="#">info@greymediahouse.com</a></span></p>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
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
                                        <img src="images/msg.png" alt="" /><p>Email: <span class="yellow"><a href="mailto:info@greymediahouse.com   ">info@greymediahouse.com</a></span></p>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div>
                            <%-- <div class="follow">
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
