<%@ Page Title="EMERGENCY" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>EMERGENCY</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/EMERGENCY.jpg" alt="v" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2013</p>
                    <p>No. of Episodes : 24</p>
                    <p>Duration per Episode : 42 mins</p>
                    <br />
                    <p>
                       The series tells about the routine of the reception at the modern hospital, its personnel and patients. Each episode describes the typical day of emergency department, describes the story about the rescue of human lives. These doctors have a lot of responsobilities, that is why they should be not only professionals but also be ready to meet challenges and have sympathy to other's pain.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

