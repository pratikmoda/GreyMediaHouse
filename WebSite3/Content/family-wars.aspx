<%@ Page Title="FAMILY WARS" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <style>
        .col_1_of_4 {
            background: none !important;
            cursor: pointer;
            display: block;
            float: left;
            margin: 0 2% 0 3.6%;
        }

        .desc {
            min-height: 324px;
        }

            .desc p {
                color: #fff;
                font-size: 0.8999em;
                line-height: 1.8em;
                text-align: justify;
            }
    </style>
    <div class="banner">
        <div class="wrap">
            <h2>FAMILY WARS</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/FAMILY_WARS.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2015</p>
                    <p>No. of Episodes : 24</p>
                    <p>Duration per Episode : 45 mins</p>
                    <br />
                    <p>
                        The main plot is anticorruption. The plot is on a true story, existing nowadays.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

