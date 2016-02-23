<%@ Page Title="Be Strong" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>BE STRONG</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/BE_STRONG.jpg" alt="BE_STRONG" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2013</p>
                    <p>No. of Episodes : 12</p>
                    <p>Duration per Episode : 42 mins</p>
                    <br />
                    <p>
                        Family drama takes place in 2013, however, the intrigue started in 90-s. The main character is a young woman, who 
                        could reunite the family at the hard times.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

