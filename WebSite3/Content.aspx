<%@ Page Title="" Language="C#" MasterPageFile="~/App_Master/Site.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>


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
                        <a href="#">
                            <img src="Artwork/A_COACH.jpg" alt="A_COACH" /></a>
                        <div class="links">
                            <h4><a href="#">A COACH</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/A_FATHERS_PLEDGE.jpg" alt="A_FATHERS_PLEDGE" /></a>
                        <div class="links">
                            <h4><a href="#">A FATHERS PLEDGE</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/AGAINST_ALL_ODDS.jpg" alt="AGAINST_ALL_ODDS" /></a>
                        <div class="links">
                            <h4><a href="#">AGAINST ALL ODDS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas action drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/AGENT.jpg" alt="AGENT" /></a>
                        <div class="links">
                            <h4><a href="#">AGENT</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas animation mix_all" data-cat="animation" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/ALI_AND_AYA.jpg" alt="ALI_AND_AYA" /></a>
                        <div class="links">
                            <h4><a href="#">ALI AND AYA</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/BE_STRONG.jpg" alt="BE_STRONG" /></a>
                        <div class="links">
                            <h4><a href="#">BE STRONG</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/BROTHERS.jpg" alt="BROTHERS" /></a>
                        <div class="links">
                            <h4><a href="#">BROTHERS</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/DESCENDANT.jpg" alt="DESCENDANT" /></a>
                        <div class="links">
                            <h4><a href="#">DESCENDANT</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio tvdramas drama mix_all" data-cat="tvdramas" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/DEVOTED.jpg" alt="DEVOTED" /></a>
                        <div class="links">
                            <h4><a href="#">DEVOTED</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

