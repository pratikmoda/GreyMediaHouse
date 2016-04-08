<%@ Page Title="DREAM" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>DREAM</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/DREAM.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2012</p>
                    <p>No. of Episodes : 25</p>
                    <p>Duration per Episode : 45 mins</p>
                    <br />
                    <p>
                        This is an inspirational story of an orphan dreaming to become a singer like her favourite celebrity with a similar life story.
As time passes by, the little girl grows up, she continues to work hard to follow her dream.
The life has its own rules and if you want to achieve your dream, you have to be strong, you must believe, you should not give up. Can she cope with the difficulties? Can she achieve her dream?
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

