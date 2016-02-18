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
                <div class="portfolio app mix_all" data-cat="app">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/A_COACH.jpg" alt="A_COACH" /></a>
                        <div class="links">
                            <h4><a href="#">A Coach</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio app mix_all" data-cat="app" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/A_FATHERS_PLEDGE.jpg" alt="kailaspatil" /></a>
                        <div class="links">
                            <h4><a href="#">A Father Pledge</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio write design mix_all" data-cat="write" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/AGAINST_ALL_ODDS.jpg" alt="velocrushindia" /></a>
                        <div class="links">
                            <h4><a href="#">Against All Odds</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio write design mix_all" data-cat="write" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/AGENT.jpg" alt="velocrushindia" /></a>
                        <div class="links">
                            <h4><a href="#">Agents</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio write design mix_all" data-cat="write" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/ALI_AND_AYA.jpg" alt="velocrushindia" /></a>
                        <div class="links">
                            <h4><a href="#">Ali And Aya</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="portfolio write design mix_all" data-cat="write" style="display: inline-block; opacity: 1;">
                    <div class="portfolio-wrapper">
                        <a href="#">
                            <img src="Artwork/BE_STRONG.jpg" alt="velocrushindia" /></a>
                        <div class="links">
                            <h4><a href="#">Be Strong</a></h4>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

