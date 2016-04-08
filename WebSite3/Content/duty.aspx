<%@ Page Title="DUTY" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>DUTY</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/DUTY.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Action, Drama</p>
                    <p>Year : 2012</p>
                    <p>No. of Episodes : 31</p>
                    <p>Duration per Episode : 42 mins</p>
                    <br />
                    <p>
                        The series is about a young police officer who works in the law enforcement authorities. There are true friends, love and secrets from the past make the main
intrigues, rivalry, victory, frienship and betrayal, pure love and hero stronger.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

