<%@ Page Title="DESCENDANT" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>DESCENDANT</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/DESCENDANT.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Family, Drama</p>
                    <p>Year : 2014</p>
                    <p>No. of Episodes : 12</p>
                    <p>Duration per Episode : 40 mins</p>
                    <br />
                    <p>
                        It is a family saga, which is a very popular genre nowadays. The plot is about the relationships among family 
                        members. The authors believe the series will find a response in the hearts of the audience and will help some 
                        families to cope with their own life problems. The series is about the father who has two sons and a beautiful 
                        daughter. Children grow up and create their own family. The father becomes a grandfather and a village elder. After 
                        being retired he gives all his effort to his village.

                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

