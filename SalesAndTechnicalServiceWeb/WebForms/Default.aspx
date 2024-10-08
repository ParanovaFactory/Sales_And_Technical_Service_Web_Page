<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SalesAndTechnicalServiceWeb.WebForms.Default" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Sales And Services</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">
    <!-- //online-fonts -->

</head>
<body>
    <div class="sidenav">
        <div class="row side_top">
            <div class="col-4 side_top_left">
                <img src="https://cdn-icons-png.flaticon.com/512/9321/9321345.png" alt="news image" class="img-fluid navimg">
            </div>
            <div class="col-8 side_top_right">
                <h6>Sales And Services</h6>
            </div>
        </div>
        <header>
            <div class="container-fluid px-md-5 ">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Home</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">About</a></li>
                        <li class="mt-sm-3"><a href="#gallery" class="scroll">Products</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Product Tracking</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </header>
    </div>
    <div class="main" id="home">
        <div class="banner-text-w3ls">
            <div class="container">
                <div class="mx-auto text-center">
                    <h1>The Best Priced Products</h1>
                    <p class="banp mx-auto mt-3">The chipest priced products are at your door with 1 click</p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Learn More</a>
                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h3 class="w3_head mb-5">About Us </h3>
            <img src="images/1.jpg" class="img-fluid" alt="">
            
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <p class="iner mt-5"><%# Eval("Context") %></p>
                    </ItemTemplate>
                </asp:Repeater>
        </section>
        <!-- //about -->
        <!-- news -->
        <div class="news" id="gallery">
            <div class="text-center">
                <h2 class="w3_head">Products</h2>
                <style>
                    table {
                        font-family: arial, sans-serif;
                        border-collapse: collapse;
                        width: 100%;
                    }

                    td, th {
                        border: 1px solid #dddddd;
                        text-align: left;
                        padding: 8px;
                    }

                    tr:nth-child(even) {
                        background-color: #dddddd;
                    }
                </style>

                <table class="control control-form">
                    <tr>
                        <th>Product</th>
                        <th>Brand</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Cathegory</th>
                        <th>Description</th>
                    </tr>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ProductName") %></td>
                                <td><%# Eval("ProductBrand") %></td>
                                <td><%# Eval("ProductSellingPrice") %></td>
                                <td><%# Eval("ProductStock") %></td>
                                <td><%# Eval("CathegoryName") %></td>
                                <td><%# Eval("ProductDescription") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            <div class="row news-grids">
                <div class="col-md-4 news-grids-left">
                    <div class="news_top">
                        <a href="#gal1">
                            <img src="https://w0.peakpx.com/wallpaper/432/891/HD-wallpaper-technology-asus-rog-pixel-art.jpg" alt="news image" class="img-fluid"></a>
                        <h4>ASUS</h4>
                    </div>
                    <div class="news_top mt-5">
                        <a href="#gal2">
                            <img src="https://w0.peakpx.com/wallpaper/142/643/HD-wallpaper-technology-gigabyte-aorus.jpg" alt="news image" class="img-fluid"></a>
                        <h4>GIGABYTE</h4>
                    </div>
                </div>
                <div class="col-md-4 news-grids-middle">
                    <div class="news_top">
                        <a href="#gal3">
                            <img src="https://4kwallpapers.com/images/walls/thumbs_2t/18091.png" alt="news image" class="img-fluid"></a>
                        <h4>LOGITECH </h4>
                    </div>
                    <div class="news_top mt-5">
                        <a href="#gal4">
                            <img src="https://w0.peakpx.com/wallpaper/256/357/HD-wallpaper-msi-total-deominance-msi-computer-deviantart.jpg" alt="news image" class="img-fluid"></a>
                        <h4>MSI</h4>
                    </div>
                </div>
                <div class="col-md-4 news-grids-right">
                    <div class="news_top">
                        <a href="#gal5">
                            <img src="https://steamuserimages-a.akamaihd.net/ugc/952963919734636203/2116E434A8B31B63F871E05D5285D11BD72AE104/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=true" alt="news image" class="img-fluid"></a>
                        <h4>STEELSERIES </h4>
                    </div>
                    <div class="news_top mt-5">
                        <a href="#gal6">
                            <img src="https://4kwallpapers.com/images/walls/thumbs_2t/15937.png" alt="news image" class="img-fluid"></a>
                        <h4>PREDATOR</h4>
                    </div>
                </div>


            </div>
        </div>

        <!--services-->
        <div class="wthree_pvtits-services align-w3" id="services">
            <div class="container">
                <div class="wthree_pvt_title text-center">
                    <h3 class="w3_head">Technical Services
                    </h3>
                    <p class="main_p mb-5  text-center mx-auto">

                        <h2 class="w2_head">Our Services</h2>

                        <p class="iner mt-5"><strong>Device Diagnosis and Analysis:</strong> A comprehensive inspection of all your technological devices, including necessary tests and analyses to identify issues.</p>

                    <p class="iner mt-5"><strong>Repair Services:</strong> Replacement of faulty or damaged parts, troubleshooting software issues, applying updates, and hardware repairs and revisions.</p>

                    <p class="iner mt-5"><strong>Maintenance and Support:</strong> Periodic maintenance to ensure the longevity of your devices, remote support for quick issue resolution, and user-friendly instructions and guidance.</p>

                    <p class="iner mt-5"><strong>Spare Parts Supply:</strong> Original spare parts supply service and provision of suitable spare parts at competitive prices.</p>

                    <p class="iner mt-5"><strong>Installation and Setup:</strong> Installation services for newly purchased devices, along with network and system configuration.</p>

                    <p class="iner mt-5"><strong>Training and Consultancy:</strong> Training sessions to help users utilize their devices effectively and technological consultancy for tailored solutions.</p>

                    <p class="iner mt-5"><strong>Warranty and After-Sales Support:</strong> Support during the warranty period for purchased products and quick solutions for encountered issues.</p>

                    <h2 class="w2_head">Our Service Process:</h2>
                    <p class="iner mt-5">1. Send your device to us or bring it to our service center.</p>
                    <p class="iner mt-5">2. Receive detailed information about your device’s condition.</p>
                    <p class="iner mt-5">3. Be informed about the repair and maintenance process.</p>
                    <p class="iner mt-5">4. Your device will be checked again after repairs and returned to you.</p>

                    <h2 class="w2_head">Customer Satisfaction:</h2>
                    <p class="iner mt-5">Customer satisfaction is our top priority. Throughout the technical service process, we keep you informed, find solutions to your problems, and provide the best service possible.</p>

                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" style="background-color: rebeccapurple" a href="ProductTracking.aspx" role="button">Defective Product Tracking</a>
                </div>
            </div>
        </div>
        <!-- //services-->



        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-5">Contact </h3>
            <p class="main_p mb-5  text-center mx-auto"></p>
            <div class="contact_grid_right mt-5 mx-auto text-center">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <div>
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Name And Surname"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Address"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <asp:TextBox ID="TextBox3" runat="server" placehoder="Your Message" TextMode="MultiLine" Height="50"></asp:TextBox>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="SEND" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>

            <div class="cpy-right text-center">
                <div class="follow">
                    <ul class="social_section_1info">
                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-facebook"></span></a></li>
                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-twitter"></span></a></li>
                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-google-plus"></span></a></li>
                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-dribbble"></span></a></li>

                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-vimeo"></span></a></li>
                        <li><a href="https://github.com/ParanovaFactory"><span class="fa fa-linkedin"></span></a></li>
                    </ul>
                </div>
                <p>
                    All rights reserved | Design by
					<a href="https://github.com/ParanovaFactory">SADIK BERKAY KARADUMAN.</a>
                </p>
            </div>
        </section>
        <!-- //contact -->

    </div>

</body>
</html>
