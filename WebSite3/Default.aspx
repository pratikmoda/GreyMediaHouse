<%@ Page Title="Home" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default3" %>

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
                        <h3>Grey Media House (GMH) is a full fledged marketing & distribution company
formed by executives with core experience in production, marketing &
distribution of Films & Television content. The company specializes in
connecting content producers to reach out to appropriate Television and
Digital channels across Asia, Europe, Middle East, Africa and Latin America.    </h3>

                        <div class="clear"></div>
                        <br />
                        <h3>We Aggregate, Process and Deliver the right content to the right people.</h3>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
