<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product Details.aspx.cs" Inherits="HCI.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <!-- Custom CSS -->
    <style>
        h5 {
            color: black
        }

        a:link {
            color: black
        }

        panel {
            border-bottom: thin;
            border-top: thin;
            margin-top: 2px;
            margin-bottom: 2px;
            border: thin;
        }
/*        .carousel-inner .carousel-item > img {
            -webkit-animation: thing 10s;
            -o-animation: thing 10s;
            animation: thing 10s;
        }

        @keyframes thing {
            from {
                transform: scale(1, 1);
            }

            to {
                transform: scale(1.5, 1.5);
            }
        }

        .img-magnifier-container {
            position: relative;
        }*/

        .img-magnifier-glass {
            position: absolute;
            border: 2px solid;
            border-color:white;
            border-radius: 65%;
            cursor: none;
            /*Set the size of the magnifier glass:*/
            width: 150px;
            height: 150px;
        }
        td{
            width: 100px;
        }
    </style>

    <!-- breadcrumbs -->
    <div class="row my-2 ml-2">
        <nav aria-label="breadcrumb" style="display: inline-block;">
            <ol class="breadcrumb pb-0">
                <li class="breadcrumb-item"><a href="#">All Products</a></li>
                <li class="breadcrumb-item"><a href="#">Tops</a></li>
                <li class="breadcrumb-item active" aria-current="page">Blouses</li>
            </ol>
        </nav>

    </div>

    <!-- Container -->
    <div class="container-fluid">
        <!-- Product Images Slideshow & Details -->
        <div class="row">
            <div class="col">                
                <div id="ProductCarousel" class="carousel slide carousel-thumbnails">
                      <div class="carousel-inner img-magnifier-container" style="margin-bottom: 50px;">
                        <div class="carousel-item active">
                          <img class="d-block w-100" id="img1" src="/Images/top-01.jpg" alt="Short Sleeve Blazer" style="max-width:800px;max-height:600px;width:100%;height:auto;background-size:contain">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" id="img2" src="/Images/top-02.jpg" alt="Short Sleeve Blazer" style="max-width:800px;max-height:600px;width:100%;height:auto;background-size:contain">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" id="img3" src="/Images/top-03.jpg" alt="Short Sleeve Blazer" style="max-width:800px;max-height:600px;width:100%;height:auto;background-size:contain">
                        </div>
                      </div>

                      <a class="carousel-control-prev" href="#ProductCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>

                      <a class="carousel-control-next" href="#ProductCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
               
                    <ol class="carousel-indicators" style="bottom: -50px" >
                        <li data-target="#ProductCarousel" data-slide-to="0" class="active">
                            <img src="/Images/top-01.jpg" class="d-block w-100">
                        </li>
                        <li data-target="#ProductCarousel" data-slide-to="1">
                            <img src="/Images/top-02.jpg" class="d-block w-100">
                        </li>
                        <li data-target="#ProductCarousel" data-slide-to="2">
                            <img src="/Images/top-03.jpg" class="d-block w-100">
                        </li>
                    </ol>
              </div>
            </div>
       
            <div class="col">
                <span style="font-size: large" class="my-2">
                    HONEY YU KR SHORT SLEEVE BLAZER IN MILK 
                </span><br />

                <span style="color: darksalmon; font-size: large" class="my-2">
                        RM87
                </span><br />

                <div>
                    <span style="font-size: large" class="my-2">Color</span><br />
                    <div class="btn-group-toggle mb-2" data-toggle="buttons">
                        <label class="btn active btn-colour" style="background-color: ghostwhite">
                            <input type="checkbox" checked>
                        </label>
                        <label class="btn btn-colour" style="background-color: cadetblue">
                            <input type="checkbox">
                        </label>
                        <label class="btn btn-colour" style="background-color: rosybrown">
                            <input type="checkbox">
                        </label>
                        <label class="btn btn-colour" style="background-color: brown">
                            <input type="checkbox">
                        </label>
                        <label class="btn btn-colour" style="background-color: darkolivegreen">
                            <input type="checkbox">
                        </label>
                    </div>
                </div>

                <div>
                    <span style="font-size: large">Quantity</span>
                    <br />
                    <div class="input-group">
                        <span><input type='button' value='-' style="background-color:black" class='qtyminus btn btn-secondary mr-1' field='quantity'/></span>
                        <input type='text' name='quantity' value='0' class='qty' style="max-width:60px; text-align:center"/>
                        <span><input type='button' value='+' style="background-color:black" class='qtyplus btn btn-secondary mx-1' field='quantity' /></span>
                    </div>
                </div>
                
                <span>
                     <button class="btn btn-color btn-secondary my-3" data-toggle="modal"
                         data-target="#exampleModalCenter" style="background-color: black">
                         ADD TO CART
                     </button>
               </span>

                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                Item added to cart!
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <a href="Cart.aspx" type="button" class="btn btn-danger">View Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="mt-2"/>
                <!--Accordion wrapper-->
                <div id="accordionEx" aria-multiselectable="true">
                    <div class="panel-group">
                        <!-- Accordion panel -->
                        <div class="panel panel-default" role="tabpanel">
                            <!-- Panel header -->
                            <div class="panel-heading" id="headingOne1">
                                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" 
                                    aria-expanded="false" aria-controls="collapseOne1" >
                                    <span>Details <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                            </div>

                            <!-- Panel body -->
                            <div id="collapseOne1" class="collapse show" aria-labelledby="headingOne1"
                                data-parent="#accordionEx" ">
                                <div class="panel-body mx-2 my-2" style="font-size: medium">
                                        <span>Made of mixed bast and cotton material</span><br />
                                        <span>Non-sheer</span><br />
                                        <span>Functional front buttons closure</span><br />
                                        <span>Pockets for decorative purpose only</span><br />
                                 
                                </div>
                            </div>
                        </div>
                        <hr class="mt-2"/>
                        <!-- Accordion panel -->
                        <div class="panel panel-default">

                            <div class="panel-heading" id="headingTwo2">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                                    aria-expanded="false" aria-controls="collapseTwo2">
                                    <span>Measurement <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                            </div>

                            <div id="collapseTwo2" class="collapse"aria-labelledby="headingTwo2"
                                data-parent="#accordionEx">
                                <div class="panel-body">
                                    <table class="mx-5 my-3" style="font-size: medium; align-content: center">
                                        <tr>
                                            <td></td>
                                            <td>SIZE</td>
                                        </tr>
                                        <tr>
                                            <td>Length</td>
                                            <td>64 cm</td>
                                        </tr>
                                        <tr>
                                            <td>Bust</td>
                                            <td>108 cm</td>
                                        </tr>
                                        <tr>
                                            <td>Shoulder</td>
                                            <td>41 cm</td>
                                        </tr>
                                    </table>
                                    <span><img src="/Images/Blazer.jpg" alt="Blazer Measurement" style="align-content:center; width:auto; height:200px; max-width:800px"/></span>
                                    
                                </div>
                            </div>
                        </div>

                        <hr class="mt-2"/>
                        <!-- Accordion panel -->
                        <div class="panel panel-default">

                            <div class="panel-heading"  id="headingThree3">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                    aria-expanded="false" aria-controls="collapseThree3">
                                    <span>Care Instruction <i class="fa fa-arrow-circle-down"></i></span>
                                </a>
                            </div>

                            <div id="collapseThree3" class="collapse" aria-labelledby="headingThree3"
                                data-parent="#accordionEx">
                                <div class="panel-body mx-2 my-3" style="font-size: medium">
                                    <span>Handwash/Machine wash on gentle with like colours</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="mt-2"/>
                </div>
                <!-- Accordion wrapper -->

                <span>
                    <button class="btn btn-light"><i class="fa fa-facebook"></i></button>
                    <button class="btn btn-light"><i class="fa fa-instagram"></i></button>
                    <button class="btn btn-light"><i class="fa fa-twitter-square"></i></button>
                </span>
            </div>
            </div>
        </div>

        <!--Similar Product Gallery -->
        <!-- Title -->
    <br />
    <div class="row" style="margin-bottom: 3px">
        <div class="col">
            <h3 style="text-align: center">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Similar Product&nbsp;<i class="fa fa-heart" style="font-size: medium"></i></h3>
        </div>
    </div>
        
        <!-- Similar prducts cards -->
    <div class="row ml-5">
        <!-- product cards -->
        <% for (int i = 0; i < 3; i++)
            { %>
        <div class="col">
            <div class="card shadow-sm">
                <a href="Product Details.aspx" class="card-link">
                    <img src="/Images/product-image-01.jpg" class="card-img-top" alt="V Neck Button Blouse">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-0">V Neck Button Blouse</h5>
                        <p class="card-text text-center mb-0">RM 45.00</p>
                        <p class="card-text text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>&nbsp;6 reviews
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
