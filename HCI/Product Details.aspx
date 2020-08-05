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
            border-color: white;
            border-radius: 65%;
            cursor: none;
            /*Set the size of the magnifier glass:*/
            width: 150px;
            height: 150px;
        }

        td {
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
                            <img class="d-block w-100" id="img1" src="/Images/top-01.jpg" alt="Short Sleeve Blazer" style="max-width: 500px; width: 100%; height: auto; background-size: contain">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" id="img2" src="/Images/top-02.jpg" alt="Short Sleeve Blazer" style="width: 100%; height: auto; background-size: contain">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" id="img3" src="/Images/top-03.jpg" alt="Short Sleeve Blazer" style="width: 100%; height: auto; background-size: contain">
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

                    <ol class="carousel-indicators" style="bottom: -50px">
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

            <div class="col-7">
                <span class="float-right"><i class="fa fa-star-half-o"></i></span>
                <span class="float-right"><i class="fa fa-star"></i></span>
                <span class="float-right"><i class="fa fa-star"></i></span>
                <span class="float-right"><i class="fa fa-star"></i></span>
                <span class="float-right"><i class="fa fa-star"></i></span>
                <h5 style="letter-spacing: 0.1em;">SHORT SLEEVE BLAZER</h5>
                <span style="font-size: larger;">RM 45.00</span>
                <hr />
                <div>
                    <label>Color</label><br />
                    <div class="btn-group-toggle mb-2" data-toggle="buttons">
                        <label class="btn active btn-colour" style="background-color: ghostwhite;">
                            <input type="radio" checked>
                        </label>
                        <label class="btn btn-colour" style="background-color: cadetblue">
                            <input type="radio">
                        </label>
                        <label class="btn btn-colour" style="background-color: rosybrown">
                            <input type="radio">
                    </div>
                </div>

                <div>
                    <label>Quantity</label>
                    <br />
                    <div class="input-group">
                        <span>
                            <input type='button' value='-' class='qtyminus btn btn-secondary mr-0 no-focus-outline' field='quantity' style="width: 30px; border-radius: 5px 0px 0px 5px; height: 30px; padding: 0;" /></span>
                        <input type='text' name='quantity' value='0' class='qty no-focus-outline' style="max-width: 60px; text-align: center; border-radius: 0px; border: 1px solid #666666 !important; height: 30px;" />
                        <span>
                            <input type='button' value='+' class='qtyplus btn btn-secondary ml-0 no-focus-outline' field='quantity' style="width: 30px; border-radius: 0px 5px 5px 0px; height: 30px; padding: 0;" /></span>
                    </div>
                </div>

                <span>
                    <button class="btn btn-primary no-focus-outline my-3" data-toggle="modal"
                        data-target="#exampleModalCenter">
                        Add to Cart
                    </button>
                </span>

                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document" style="width: 300px;">
                        <div class="modal-content">
                            <h5 class="modal-body m-4">Item added to cart!
                            </h5>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <a href="Cart.aspx" type="button" class="btn btn-primary">View Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="mt-2" />
                <!--Accordion wrapper-->
                <div id="accordionEx" aria-multiselectable="true">
                    <div class="panel-group">
                        <!-- Accordion panel -->
                        <div class="panel panel-default" role="tabpanel">
                            <!-- Panel header -->
                            <div class="panel-heading" id="headingOne1">
                                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1"
                                    aria-expanded="false" aria-controls="collapseOne1">
                                    <label>Details <i class="fa fa-arrow-circle-down"></i></label>
                                </a>
                            </div>

                            <!-- Panel body -->
                            <div id="collapseOne1" class="collapse show" aria-labelledby="headingOne1" data-parent="#accordionEx">
                                <div class="panel-body mx-2 my-2" style="font-size: medium">
                                    <ul>
                                        <li>Made of mixed bast and cotton material</li>
                                        <li>Non-sheer</li>
                                        <li>Functional front buttons closure</li>
                                        <li>Pockets for decorative purpose only</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <hr class="mt-2" />
                        <!-- Accordion panel -->
                        <div class="panel panel-default">

                            <div class="panel-heading" id="headingTwo2">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                                    aria-expanded="false" aria-controls="collapseTwo2">
                                    <label>Measurement <i class="fa fa-arrow-circle-down"></i></label>
                                </a>
                            </div>

                            <div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo2"
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
                                    <span>
                                        <img src="/Images/Blazer.jpg" alt="Blazer Measurement" style="align-content: center; width: auto; height: 200px; max-width: 800px" /></span>

                                </div>
                            </div>
                        </div>

                        <hr class="mt-2" />
                        <!-- Accordion panel -->
                        <div class="panel panel-default">

                            <div class="panel-heading" id="headingThree3">
                                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                                    aria-expanded="false" aria-controls="collapseThree3">
                                    <label>Care Instruction <i class="fa fa-arrow-circle-down"></i></label>
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
                    <hr class="mt-2" />
                </div>
                <!-- Accordion wrapper -->

            </div>
        </div>
    </div>

    <!-- Reviews -->
    <hr />
    <div class="row">
        <div class="col my-3 mx-5">
            <h3 style="text-align: center; letter-spacing: 0.1em;" class="mb-3">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Reviews&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h3>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid" />
                            <p class="text-secondary text-center">15 Minutes Ago</p>
                        </div>
                        <div class="col-md-10">
                            <p>
                                <strong>Customer A</strong>
                                <span class="float-right"><i class="fa fa-star-o"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                            </p>
                            <div class="clearfix"></div>
                            <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid" />
                            <p class="text-secondary text-center">3 Days Ago</p>
                        </div>
                        <div class="col-md-10">
                            <p>
                                <strong>Customer B</strong>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                            </p>
                            <div class="clearfix"></div>
                            <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img src="https://image.ibb.co/jw55Ex/def_face.jpg" class="img img-rounded img-fluid" />
                            <p class="text-secondary text-center">1 Week Ago</p>
                        </div>
                        <div class="col-md-10">
                            <p>
                                <strong>Customer C</strong>
                                <span class="float-right"><i class="fa fa-star-o"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                                <span class="float-right"><i class="fa fa-star"></i></span>
                            </p>
                            <div class="clearfix"></div>
                            <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--  Product Gallery -->
    <!-- Title -->
    <hr />
    <div class="row">
        <div class="col my-3">
            <h3 style="text-align: center; letter-spacing: 0.1em;">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Similar Products&nbsp;<i class="fa fa-heart" style="font-size: medium"></i></h3>
        </div>
    </div>

    <!-- Similar prducts cards -->
    <div class="row mx-5">
        <!-- product cards -->
        <% for (int i = 0; i < 3; i++)
            { %>
        <div class="col text-center">
            <div class="card shadow-sm">
                <a href="Product Details.aspx" class="card-link">
                    <img src="/Images/top-01.jpg" class="card-img-top" alt="V Neck Button Blouse">
                    <div class="card-body">
                        <h5 class="card-title text-center mb-0">Short Sleeve Blazer</h5>
                        <p class="card-text text-center mb-0">RM 45.00</p>
                        <p class="card-text text-center">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>&nbsp;3 reviews
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
