<%@ Page Title="A Fathers Pledge" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>A FATHERS PLEDGE</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/A_FATHERS_PLEDGE.jpg" alt="A_FATHERS_PLEDGE" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2012</p>
                    <p>No. of Episodes : 16</p>
                    <p>Duration per Episode : 45 mins</p>
                    <br />
                    <p>
                        Happiness and sadness always go together in a man’s life. A man has good and bad moments while he lives. But one 
                        man’s meat is another man’s poison. The series tells about a father of four children accused of killing his wife 
                        and parents and sentenced to serve a long period in jail. His children grew up without him and used to live by 
                        their own. Now after being set free, father tries to find his kids and prove his innocence. However, his children 
                        are not ready to forgive and accept him. He should return his life back and fulfill father’s duty.
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

