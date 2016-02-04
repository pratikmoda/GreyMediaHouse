<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default3" %>

<%@ Register Src="~/UserControls/Home/Banner.ascx" TagPrefix="uc1" TagName="Banner" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Banner" runat="Server">
    <%--<uc1:Banner runat="server" ID="Banner" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="content-top">
        <div class="wrap">
            <h3>About us</h3>
            <div class="section group">
                <div class="section group">
                    <div class="cont span_2_of_about" style="float: none; margin: 0 auto;">
                        <h3>Grey Media House (GMH) is a fully integrated electronic, print and internet marketing communication solution provider focused on effectively servicing the needs of companies looking at product and brand promotion through print and online media.</h3>
                        <div class="section group example">
                            <div class="col_1_of_2 ">
                                <p>Our company provides unique and advanced marketing solutions for promotion and growth of the brand and the company.</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                        <br />
                        <h3>We create, develop and reinforce product awareness.</h3>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
