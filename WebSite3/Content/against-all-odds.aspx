<%@ Page Title="Against All Odds" Language="C#" MasterPageFile="~/App_Master/Site.master" %>

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
            <h2>AGAINST ALL ODDS</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="content-top">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <img src="../Artwork/AGAINST_ALL_ODDS.jpg" alt="AGAINST_ALL_ODDS" />

                </div>
                <div class="desc">
                    <p>Genre : Drama</p>
                    <p>Year : 2014</p>
                    <p>No. of Episodes : 20</p>
                    <p>Duration per Episode : 40 mins</p>
                    <br />
                    <p>
                        She leaves her own town to escape the obsessive crusher who organized the murder of her fiance and sent her brother 
                        to jail. She wants to get education and find a job to earn money. As time goes she continues living and meets a 
                        young man. They fall in love with each other but his mother is against because she is not good enough for him. 
                        Nevertheless her mother does not even realize that the girl and her brother became orphans because of her fault. 
                        Everything happened 20 years ago, but there are still people who remember everything. Meanwhile the ex-crusher 
                        finds her in the city and tries to kill her. However her brother and her boyfriend protect the girl and convicted 
                        is imprisoned. The lovers get married and his mother accepts her feeling guilty for actions taken place long time 
                        ago. However the criminal escapes...
                    </p>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

