﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HCI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col text-center">
            <h1 class="mt-2">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Blouses&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h1>
            <!-- breadcrumbs -->
            <nav aria-label="breadcrumb" style="display:inline-block;">
                <ol class="breadcrumb pb-0">
                    <li class="breadcrumb-item"><a href="#">All Products</a></li>
                    <li class="breadcrumb-item"><a href="#">Tops</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Blouses</li>
                </ol>
            </nav>
            <hr class="mb-4"/>
        </div>
        
    </div>
    <div class="row">
        <div class="col-lg-3">
            <!-- side bar -->
            <div class="sidenav bg-light shadow p-4" id="sidenav">
                <div>
                    <div class="form-group">
                        <label for="sortby">Sort by</label>
                        <select class="form-control no-focus-outline" id="sortby" style="cursor:pointer;">
                            <option>Newest first</option>
                            <option>Price</option>
                            <option>Rating</option>
                            <option>Popularity</option>
                        </select>
                    </div>
                    <hr />
                    <div class="form-group">
                        <label for="filterprice">Filter by Price Range</label>
                        <div class="row p-2" style="max-width: 300px;">
                            <div class="col-sm-12">
                                <div id="slider-range"></div>
                            </div>
                        </div>
                        <div class="row slider-labels mt-1" style="font-size: 15px;">
                            <div class="col">
                                <span id="slider-range-value1"></span>
                                &nbsp;-&nbsp;
                                <span id="slider-range-value2"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <input type="hidden" name="min-value" value="">
                                <input type="hidden" name="max-value" value="">
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="form-group">
                        <label for="filtercolour">Filter by Colour</label>
                        <div class="btn-group-toggle" data-toggle="buttons">
                            <label class="btn active btn-colour" style="background-color:whitesmoke" title="White">
                                <input type="checkbox" checked>
                            </label>
                            <label class="btn active btn-colour" style="background-color:cadetblue" title="Blue">
                                <input type="checkbox" checked>
                            </label>
                            <label class="btn btn-colour" style="background-color:rosybrown" title="Rose">
                                <input type="checkbox">
                            </label>
                            <label class="btn btn-colour" style="background-color:brown" title="Brown">
                                <input type="checkbox">
                            </label>
                        </div>
                    </div>
                    <hr />
                    <div class="form-group">
                        <label for="filtersize">Filter by Size</label>
                        <div class="btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-white no-focus-outline active">
                                <input type="checkbox" checked> S
                            </label>
                            <label class="btn btn-white no-focus-outline">
                                <input type="checkbox"> M
                            </label>
                            <label class="btn btn-white no-focus-outline">
                                <input type="checkbox"> L
                            </label>
                            <label class="btn btn-white no-focus-outline">
                                <input type="checkbox"> XL
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col text-center">
            <!-- product cards -->
            <% for (int i = 0; i < 6; i++)
                { %>
            <div class="card no-border shadow" style="width: 31%;" title="View Details">
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
            <% } %>
            <!-- pagination -->
            <div style="display: block;" class="text-center">
                <nav aria-label="Page navigation example" style="display: inline-block;">
                    <ul class="pagination my-page-link">
                        <li class="page-item">
                            <a class="page-link no-focus-outline" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link no-focus-outline" href="#">1</a></li>
                        <li class="page-item"><a class="page-link no-focus-outline" href="#">2</a></li>
                        <li class="page-item"><a class="page-link no-focus-outline" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link no-focus-outline" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

</asp:Content>
