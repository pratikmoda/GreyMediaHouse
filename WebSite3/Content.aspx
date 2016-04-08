<%@ Page Title="Content" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {

            var filterList = {

                init: function () {

                    // MixItUp plugin
                    // http://mixitup.io
                    $('#portfoliolist').mixitup({
                        targetSelector: '.portfolio',
                        filterSelector: '.filter',
                        effects: ['fade'],
                        //easing: 'snap',
                        // call the hover effect
                        onMixEnd: filterList.hoverEffect()
                    });

                },

                hoverEffect: function () {

                    // Simple parallax effect
                    $('#portfoliolist .portfolio').hover(
                        function () {
                            $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
                            $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
                        },
                        function () {
                            $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
                            $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
                        }
                    );

                }

            };

            // Run the show!
            filterList.init();


        });
    </script>
    <div class="banner">
        <div class="wrap">
            <h2>Content</h2>
            <div class="clear"></div>
        </div>
    </div>
    <div class="portfolio-top">
    </div>
    <div class="container">
        <ul id="filters" class="clearfix">
            <li><span class="filter active" data-filter="featurefilms tvdramas animation">All</span></li>
            <li><span class="filter" data-filter="featurefilms">Feature Films</span></li>
            <li><span class="filter" data-filter="tvdramas">TV Dramas</span></li>
            <li><span class="filter" data-filter="animation">Animation</span></li>
        </ul>
        <ul id="filters2" class="clearfix">
            <li><span class="filter active" data-filter="family drama action social adventure sports comedy horror thriller">All</span></li>
            <li><span class="filter" data-filter="family">Family</span></li>
            <li><span class="filter" data-filter="drama">Drama</span></li>
            <li><span class="filter" data-filter="action">Action</span></li>
            <li><span class="filter" data-filter="social">Social</span></li>
            <li><span class="filter" data-filter="adventure">Adventure</span></li>
            <li><span class="filter" data-filter="sports">Sports</span></li>
            <li><span class="filter" data-filter="comedy">Comedy</span></li>
            <li><span class="filter" data-filter="horror">Horror</span></li>
            <li><span class="filter" data-filter="thriller">Thriller</span></li>
        </ul>
        <div class="clear"></div>
        <div id="portfoliolist" style="" class="">
            <div class="wrapper">
                <div class="portfolio tvdramas sports drama mix_all" data-cat="tvdramas">
                    <div class="portfolio-wrapper">
                        <a href="Content/a-coach.aspx">
                            <img src="Artwork/A_COACH.jpg" alt="A_COACH" /></a>
                        <div class="links">
                            <h4><a href="Content/a-coach.aspx">A COACH</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/a-fathers-pledge.aspx">
                            <img src="Artwork/A_FATHERS_PLEDGE.jpg" alt="A_FATHERS_PLEDGE" /></a>
                        <div class="links">
                            <h4><a href="Content/a-fathers-pledge.aspx">A FATHERS PLEDGE</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/against-all-odds.aspx">
                            <img src="Artwork/AGAINST_ALL_ODDS.jpg" alt="AGAINST_ALL_ODDS" /></a>
                        <div class="links">
                            <h4><a href="Content/against-all-odds.aspx">AGAINST ALL ODDS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas action drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/agent.aspx">
                            <img src="Artwork/AGENT.jpg" alt="AGENT" /></a>
                        <div class="links">
                            <h4><a href="Content/agent.aspx">AGENT</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas animation mix_all" data-cat="animation" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/ali-and-aya.aspx">
                            <img src="Artwork/ALI_AND_AYA.jpg" alt="ALI_AND_AYA" /></a>
                        <div class="links">
                            <h4><a href="Content/ali-and-aya.aspx">ALI AND AYA</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/be-strong.aspx">
                            <img src="Artwork/BE_STRONG.jpg" alt="BE_STRONG" /></a>
                        <div class="links">
                            <h4><a href="Content/be-strong.aspx">BE STRONG</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/brothers.aspx">
                            <img src="Artwork/BROTHERS.jpg" alt="BROTHERS" /></a>
                        <div class="links">
                            <h4><a href="Content/brothers.aspx">BROTHERS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/descendants.aspx">
                            <img src="Artwork/DESCENDANT.jpg" alt="DESCENDANT" /></a>
                        <div class="links">
                            <h4><a href="Content/descendants.aspx">DESCENDANT</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/devoted.aspx">
                            <img src="Artwork/DEVOTED.jpg" alt="DEVOTED" /></a>
                        <div class="links">
                            <h4><a href="Content/devoted.aspx">DEVOTED</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/dream.aspx">
                            <img src="Artwork/DREAM.jpg" alt="DREAM" /></a>
                        <div class="links">
                            <h4><a href="Content/dream.aspx">DREAM</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/duty.aspx">
                            <img src="Artwork/DUTY.jpg" alt="DUTY" /></a>
                        <div class="links">
                            <h4><a href="Content/duty.aspx">DUTY</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/emergency.aspx">
                            <img src="Artwork/EMERGENCY.jpg" alt="EMERGENCY" /></a>
                        <div class="links">
                            <h4><a href="Content/emergency.aspx">EMERGENCY</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="Content/entrapped.aspx">
                            <img src="Artwork/ENTRAPPED.jpg" alt="ENTRAPPED" /></a>
                        <div class="links">
                            <h4><a href="Content/entrapped.aspx">ENTRAPPED</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama family mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/FAMILY_WARS.jpg" alt="FAMILY WARS" /></a>
                        <div class="links">
                            <h4><a href="#">FAMILY WARS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama  mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/FEMALE_FRIENDSHIP.jpg" alt="FEMALE FRIENDSHIP" /></a>
                        <div class="links">
                            <h4><a href="#">FEMALE FRIENDSHIP</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/FLAMING_HEART.jpg" alt="FLAMING HEART" /></a>
                        <div class="links">
                            <h4><a href="#">FLAMING HEART</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/FUTURE.jpg" alt="FUTURE" /></a>
                        <div class="links">
                            <h4><a href="#">FUTURE</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas animation mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/HEROES.jpg" alt="HEROES" /></a>
                        <div class="links">
                            <h4><a href="#">HEROES</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama family mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/HOME.jpg" alt="HOME" /></a>
                        <div class="links">
                            <h4><a href="#">HOME</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/IN_SEARCH_OF_HAPPINESS.jpg" alt="IN_SEARCH_OF_HAPPINESS" /></a>
                        <div class="links">
                            <h4><a href="#">IN SEARCH OF HAPPINESS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/LIFES_MILESTONE.jpg" alt="LIFES_MILESTONE" /></a>
                        <div class="links">
                            <h4><a href="#">LIFES MILESTONE</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/LOVE_IN_MY_HEART.jpg" alt="LOVE_IN_MY_HEART" /></a>
                        <div class="links">
                            <h4><a href="#">LOVE IN MY HEART</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas comedy mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/LOVE_IN_THE_COUNTRY.jpg" alt="LOVE_IN_THE_COUNTRY" /></a>
                        <div class="links">
                            <h4><a href="#">LOVE IN THE COUNTRY</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas comedy mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/MENS_STORY.jpg" alt="MENS_STORY" /></a>
                        <div class="links">
                            <h4><a href="#">MENS STORY</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/MY_LAND.jpg" alt="MY_LAND" /></a>
                        <div class="links">
                            <h4><a href="#">MY LAND</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas action mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/NO_CHOICE.jpg" alt="NO_CHOICE" /></a>
                        <div class="links">
                            <h4><a href="#">NO CHOICE</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/OLYMPIC_CHAMPIONS.jpg" alt="OLYMPIC_CHAMPIONS" /></a>
                        <div class="links">
                            <h4><a href="#">OLYMPIC CHAMPIONS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas comedy action mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/RAIDERS.jpg" alt="RAIDERS" /></a>
                        <div class="links">
                            <h4><a href="#">RAIDERS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas animation mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/SANZHAR_AND_KAISAR.jpg" alt="SANZHAR_AND_KAISAR" /></a>
                        <div class="links">
                            <h4><a href="#">SANZHAR AND KAISAR</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/SISTER.jpg" alt="SISTER" /></a>
                        <div class="links">
                            <h4><a href="#">SISTER</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/SISTERS_DESTINY.jpg" alt="SISTERS_DESTINY" /></a>
                        <div class="links">
                            <h4><a href="#">SISTERS DESTINY</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/SYRGALYM.jpg" alt="SYRGALYM" /></a>
                        <div class="links">
                            <h4><a href="#">SYRGALYM</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/ZHIBEK.jpg" alt="ZHIBEK" /></a>
                        <div class="links">
                            <h4><a href="#">ZHIBEK</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

