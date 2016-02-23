<%@ Page Title="Contact" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="banner">
        <div class="wrap">
            <h2>Contact</h2>
            <div class="clear"></div>
        </div>
    </div>
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
                            <asp:TextBox ID="txtName" runat="server" placeholder="Enter your Name" CssClass="text"></asp:TextBox><asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email Id" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtSubject" runat="server" placeholder="Enter Subject" CssClass="text"></asp:TextBox>
                        </div>
                        <div class="text2">
                            <asp:TextBox ID="txtMessage" runat="server" placeholder="Enter your Message" CssClass="text" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Send a message to us" CssClass="submit" OnClick="btnSubmit_Click" />
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
                                <img src="images/msg.png" alt="" /><span class="yellow1"><a href="#">info@greymediahouse.com</a></span>
                                <div class="clear"></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

