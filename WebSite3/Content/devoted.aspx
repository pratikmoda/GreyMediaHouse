<%@ Page Title="DEVOTED" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>DEVOTED</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/DEVOTED.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2013</p>
                    <p>No. of Episodes : 20</p>
                    <p>Duration per Episode : 45 mins</p>
                    <br />
                    <p>
                        The series is about true friendship between a boy and a horse. A boy raises a horse, they take part in racings and win lots of them, becoming famous. Growing up a boy becomes a man and faces difficulties and betrayal. But his true friend is always near to support.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

