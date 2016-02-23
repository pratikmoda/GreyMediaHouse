<%@ Page Title="BROTHERS" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>BROTHERS</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/BROTHERS.jpg" alt="BROTHERS" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2009</p>
                    <p>No. of Episodes : 6</p>
                    <p>Duration per Episode : 55 mins</p>
                    <br />
                    <p>
                        A choice makes our future: to maintain the business or save a brother, to keep family tradition or be criminal, to 
                        give up or keep fighting? What will they choose? “Brothers” is a social drama based on a true story. The series is 
                        about brothers born and raised in the village. Their parents are ordinary farmers, they are not rich but they love 
                        their children and respect family traditions. “My children and my wife are my wealth” - the head of the family keeps 
                        saying. Brothers grew up and chose their own path to follow. The eldest brother graduated the university and moved 
                        to the city where he started his own business. The middle brother was a promising wrestler, but involved in 
                        criminality. The youngest brother came back home from the military service to do farming with his parents. Now 
                        brothers are apart by fate. Can they keep family values and continue family traditions?"

                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

