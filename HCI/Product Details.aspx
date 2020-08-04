<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product Details.aspx.cs" Inherits="HCI.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script>
    var i = 0;
    function buttonClickInc() {
        this.parentNode.querySelector('input[type=number]').stepDown();
    }

    function buttonClickDec() {
        this.parentNode.querySelector('input[type=number]').stepUp();
    }
</script>
    
<style>
    h5 {color: black}
    a:link {color:black}
    panel {
        border-bottom:thin; 
        border-top: thin; 
        margin-top:2px; 
        margin-bottom:2px;
        border:thin;
    }
</style>
    
    <div class="container-fluid" >
        <!-- Product Images Slideshow & Details -->
        <div class="row">
            <div class="col">                
                <div id="ProductCarousel" class="carousel slide carousel-thumbnails">
                      <div class="carousel-inner" style="margin-bottom: 50px;">
                        <div class="carousel-item active">
                          <img class="d-block w-100" src="/Images/top-01.jpg" alt="Short Sleeve Blazer">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" src="/Images/top-02.jpg" alt="Short Sleeve Blazer"">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" src="/Images/top-03.jpg" alt="Short Sleeve Blazer"">
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
                <span style="font-size: large">
                    HONEY YU KR SHORT SLEEVE BLAZER IN MILK 
                </span><br />

                <span style="color: darksalmon; font-size: large">
                        RM87
                </span><br />

                <div>
                    <span style="font-size: large">Color</span><br />
                    <div class="btn-group-toggle" data-toggle="buttons">
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
                        <div class="input-group-prepend input-group-btn">
                            <button style="min-width: 2rem" class="btn btn-decement btn-outline-secondary" 
                                type="button" onclick="buttonClickInc()">-</button>
                        </div>
                        <input type="text" name="quantity" style="text-align: center; max-width:50px" 
                            class="form-control input-number" value="1" min="1"/>
                        <div class="input-group-append input-group-button">
                            <button style="min-width: 2rem" class="btn btn-increment btn-outline-secondary"
                                type="button" onclick="buttonClickInc()">+</button>
                        </div>
                    </div>
                </div>
                <br />
                <span>
                     <button class="btn btn-color btn-secondary ">ADD TO CART</button>
               </span>
                <hr class="mt-2"/>
                <!--Accordion wrapper-->
                <div id="accordionEx" aria-multiselectable="true">
                    <div class="panel-group">
                        <!-- Accordion panel -->
                        <div class="panel panel-default" role="tabpanel">
                            <!-- Panel header -->
                            <div class="panel-heading" id="headingOne1">
                                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                                    aria-controls="collapseOne1">
                                    <h5>Details <i class="fa fa-arrow-circle-down"></i></h5>
                                </a>
                            </div>

                            <!-- Panel body -->
                            <div id="collapseOne1" class="collapse show" aria-labelledby="headingOne1"
                                data-parent="#accordionEx">
                                <div class="panel-body">
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
                                    <h5>Measurement <i class="fa fa-arrow-circle-down"></i></h5>
                                </a>
                            </div>

                            <div id="collapseTwo2" class="collapse"aria-labelledby="headingTwo2"
                                data-parent="#accordionEx">
                                <div class="panel-body">
                                    <span>Length 64cm </span><br />
                                    <span>Bust 108cm</span><br />
                                    <span>Shoulder 42cm</span><br />
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
                                    <h5>Care Instruction <i class="fa fa-arrow-circle-down"></i></h5>
                                </a>
                            </div>

                            <div id="collapseThree3" class="collapse" aria-labelledby="headingThree3"
                                data-parent="#accordionEx">
                                <div class="panel-body">
                                    <span>Handwash/Machine wash on gentle with like colours</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="mt-2"/>
                </div>
                <!-- Accordion wrapper -->
            </div>
            </div>
        </div>

               

        <!--Similar Product Gallery -->
        <!-- Title -->
        <br/>
        <div class="row" style="margin-bottom: 2px" ><div class="col"><h3 style="text-align: center">Similar Product</h3></div></div>
        
        <!-- Similar prducts cards -->
    <div class="row">
        <!-- product cards -->
        <% for (int i = 0; i < 3; i++)
            { %>
        <div class="col mb-4">
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
