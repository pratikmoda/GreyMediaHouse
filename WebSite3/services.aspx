<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Banner" runat="Server">
    <div class="banner">
        <div class="wrap">
            <h2>Services</h2>
            <div class="clear"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="project-wrapper">
        <div class="wrap">
            <div class="section group">
                <div class="contserv">
                    <h2>Content Acquisitions</h2>
                    <br />
                    <div class="clear"></div>
                    <h3>
                        <p>Are you looking for a sales agent to distribute your content worldwide so you can continue to focus in production?</p>
                        <p>You have reached the right place. Please fill in the below details, and send us a screener copy of the content. We assure to get back to you with 7 days of receipt of the screener with our views.</p>
                    </h3>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <br />
            <br />
            <div class="section group">
                <div class="contserv">
                    <h2>Website Designing & Development</h2>
                    <br />
                    <div class="clear"></div>
                    <h3>
                        <p>
                            Are you looking to create a website for your company or a new film?
                        </p>
                        <p>
                            We welcome you to offer our services of Website Designing & Development. We do not just stop here. Apart from the website creation, we assist you in the SEO, reaching out to target audiences, social media and complete digital marketing planning & execution.
                        </p>
                    </h3>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="contact">
                <div class="span_2_of_contact" style="margin: 0 auto !important;">
                    <div class="clear"></div>
                    <div>
                        <div class="contact-to">
                            <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter your First Name" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtLastName" runat="server" placeholder="Enter your Last Name" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtCompanyName" runat="server" placeholder="Enter your Company Name" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtCountry" runat="server" placeholder="Enter your Country" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your Email Id" CssClass="text"></asp:TextBox>
                            <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Contact Number" CssClass="text"></asp:TextBox>
                        </div>
                        <div class="text2">
                            <asp:TextBox ID="txtMessage" runat="server" placeholder="Enter your Message" CssClass="text" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Button ID="btnSubmit" runat="server" Text="Send a message to us" CssClass="submit" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                    <br />
                    <div class="content-top" id="divThanku" runat="server">
                        <h5>Thank you for your interest. We will contact you soon...</h5>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

