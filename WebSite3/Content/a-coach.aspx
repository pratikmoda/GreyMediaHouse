<%@ Page Title="A Coach" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>A COACH</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/A_COACH.jpg" alt="A_COACH" />
                </div>
                <div class="desc">
                    <p>Genre : Sports, Drama</p>
                    <p>Year : 2012</p>
                    <p>No. of Episodes : 12</p>
                    <p>Duration per Episode : 45 mins</p>
                    <br />
                    <p>
                        A coach is a person who trains the future champions. A coach is responsible for his sportsmen's victory and defeat. 
                        A coach teaches his sportsmen to win. They intrigues, rivalry, victory, frienship and betrayal, pure love and hero 
                        stronger. Honesty in the sportsworld.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

