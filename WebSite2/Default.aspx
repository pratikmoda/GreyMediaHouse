<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>GREY MEDIA HOUSE</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
        rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"
        type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        #contact span
        {
            display: block;
            padding: 15px 0 10px;
            font-size: 18px;
        }
        #contact .txtbox
        {
            border: 1px solid #ff3333;
            height: 35px;
            width: 350px;
            text-align: left;
        }
        .contactform
        {
            text-align: left;
        }
        #imgSubmit
        {
            padding-top: 20px;
        }
    </style>
    <script type="text/javascript">

  var wWidth = $(window).width();
  var hHeight = $(window).height(); 

  $('.about').click(function {
   $('#about').css({
    paddingTop: ( $(window).height() - $('#about').height() ) / 2,
    paddingBottom: ( $(window).height() - $('#about').height() ) / 2
   });           
        }); 

  $('.contact').click(function {
   $('#contact').css({
    paddingTop: ( $(window).height() - $('#contact').height() ) / 2,
    paddingBottom: ( $(window).height() - $('#contact').height() ) / 2
   });           
           });

    </script>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                      <span class="light">GREY MEDIA HOUSE</span> 
                                    </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#mediaplanning">Media Planning</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">GREY</h1>
                        <h2>MEDIA HOUSE</h2>
                        
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- About Section -->
    <section id="about" class="about container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>About</h2>
                <p>Grey Media House (GMH) is a fully integrated electronic, print and internet marketing communication 
                solution provider focused on effectively servicing the needs of companies looking at product and brand 
                promotion through print and online media. </p>
                <p>Our company provides unique and advanced marketing solutions for promotion and growth of the brand and the company.</p>
                <p>We <strong>create</strong>, <strong> develop</strong> and <strong>reinforce</strong> product awareness.</p>
            </div>
        </div>
    </section>
    <!-- Media Planning Section -->
    <section id="mediaplanning" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>MEDIA PLANNING</h2>
                <p>Are you looking to allocate a proportion of your budget to a specific and targeted market?</p>
                <p>We do not just look out for the interests of the clients we represent; we will help you get the most out of 
                your budget by putting your brand in touch with publications most relevant to your field</p>
                <p>Advertising has to be cost-effective and we are able to offer a fine spread of publications 
                relevant to your business in order that you can target the correct audience and get the results you are looking for.</p>
            </div>
        </div>
    </section>
    <!-- Contact Section -->
    <section id="contact" class="contact container content-section text-center" style="padding-top: 120px;">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact</h2>
                <p> Thank you for stopping by. Please use the form below to contact us and will get
                back to you at the earliest possible</p>
                <form id="form1" runat="server">
                <div class="contactform">
                <span>Name</span>
                <asp:TextBox ID="txtName" CssClass="txtbox" runat="server"></asp:TextBox>
           <br />
            <span>Email Address</span>
             <asp:TextBox ID="txtEmail" CssClass="txtbox" runat="server"></asp:TextBox><br />
            <span>Subject</span>
             <asp:TextBox ID="txtSubject" CssClass="txtbox" runat="server"></asp:TextBox><br />
            <span>Description</span> <asp:TextBox ID="txtDescription" CssClass="txtbox" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
                <asp:ImageButton ID="imgSubmit" runat="server" ImageUrl="img/buttons.png" 
                        onclick="imgSubmit_Click"></asp:ImageButton>      
           </div>
            </form>
                <p><a href="mailto:info@greymediahouse.com">info@greymediahouse.com</a>
                </p>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; Grey Media House 2014</p>
        </div>
    </footer>
    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>-->
    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>
</body>
</html>
