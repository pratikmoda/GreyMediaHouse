<%@ Page Title="Ali And Aya" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>ALI AND AYA</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/ALI_AND_AYA.jpg" alt="ALI_AND_AYA" />

                </div>
                <div class="desc">
                    <p>Genre : Animation, Children</p>
                    <p>Year : 2014</p>
                    <p>No. of Episodes : 53</p>
                    <p>Duration per Episode : 10 mins</p>
                    <br />
                    <p>
                        A brother and a sister are going to their grandparents to the village. They discover, explore and find out something 
                        every day. They meet new friends like a calf, a rabbit and a puppy.

                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

