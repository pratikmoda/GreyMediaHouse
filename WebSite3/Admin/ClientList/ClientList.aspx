<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Admin.master" AutoEventWireup="true" CodeFile="ClientList.aspx.cs" Inherits="Admin_ClientList_ClientList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="divList">
        <asp:ListView runat="server" ID="lvInquiry">
            <LayoutTemplate>
                <table id="tblProduct">
                    <tr id="Tr1" runat="server" style="background-color: Bisque; height: 22px;">
                        <td style="padding-left: 10px; font-weight: bold;" id="userid">ID
                        </td>
                        <td>INDUSTRY
                        </td>
                        <td>FIRSTNAME
                        </td>
                        <td>LASTNAME
                        </td>
                        <td>COMPANYNAME
                        </td>
                        <td>CITY
                        </td>
                        <td>EMAIL
                        </td>

                        <%--<td>Edit
                        </td>--%>
                    </tr>
                    <tr runat="server" id="groupPlaceholder" style="border-right: solid 1px grey; padding-bottom: 10px;">
                    </tr>
                    <tr style="background-color: Bisque; height: 22px;">
                        <td style="padding-left: 10px;" colspan="6">
                            <asp:DataPager ID="dtpProperties" PagedControlID="lvInquiry" runat="server"
                                PageSize="20">
                                <Fields>
                                    <asp:NumericPagerField ButtonCount="5" PreviousPageText="Previous" NextPageText="Next" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <GroupTemplate>
                <tr runat="server" id="productRow" style="padding-bottom: 6px;">
                    <td runat="server" id="itemPlaceholder"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <tr class="even" style="height: 22px;">
                    <td style="padding-left: 10px;" runat="server">
                        <asp:Label ForeColor="CadetBlue" ID="lblId" runat="server" Text='<%#Eval("ID") %>' />
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="lblDesc" Text='<%#Eval("INDUSTRY") %>'></asp:Label>
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="Label3" Text='<%#Eval("FIRSTNAME") %>'></asp:Label>
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="Label5" Text='<%#Eval("LASTNAME") %>'></asp:Label>
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="Label6" Text='<%#Eval("COMPANYNAME") %>'></asp:Label>
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="Label1" Text='<%#Eval("CITY") %>'></asp:Label>
                    </td>
                    <td style="padding-right: 10px;">
                        <asp:Label ForeColor="CadetBlue" runat="server" ID="Label2" Text='<%#Eval("EMAIL") %>'></asp:Label>
                    </td>
                    <%--<td style="padding-right: 10px;">
                        <asp:HyperLink ID="HyperLink1" ForeColor="CadetBlue" NavigateUrl='<%#"~/Admin/Master/ProductMasterEdit.aspx?ID="+ DataBinder.Eval(Container.DataItem,"ID")%>'
                            runat="server">edit</asp:HyperLink>
                    </td>--%>
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <asp:Label ID="lblNoData" runat="server" Text="No Data Found"></asp:Label>
    </div>
</asp:Content>

