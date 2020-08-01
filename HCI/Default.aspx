<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HCI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col">
            <h1 class="text-center">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Blouses&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h1>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <div class="sidenav bg-light shadow" id="sidenav">
                <a class="nav-link" href="#">Filter</a>
                <a class="nav-link" href="#">Sort</a>
            </div>
        </div>
        <div class="col">
            <div style="display: block;" class="text-center">
                <nav aria-label="Page navigation example" style="display:inline-block;">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <% for (int i = 0; i < 6; i++)
                { %>
            <div class="card no-border shadow" style="width: 31%;">
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
            <% } %>
            <div style="display: block;" class="text-center">
                <nav aria-label="Page navigation example" style="display:inline-block;">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link no-focus-outline my-page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link no-focus-outline my-page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link no-focus-outline my-page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link no-focus-outline my-page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link no-focus-outline my-page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

</asp:Content>
