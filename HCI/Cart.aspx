<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HCI.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col text-center">
            <h1 class="mt-2">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Cart&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h1>
            <!-- breadcrumbs -->
            <nav aria-label="breadcrumb" style="display:inline-block;">
                <ol class="breadcrumb pb-0">
                    <li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Cart</li>
                </ol>
            </nav>
            <hr class="mb-4"/>
        </div>
    </div>

    <div class="pb-5">
        <div class="container  shadow-sm">
            <div class="row">
                <div class="col-lg-12 p-3 bg-white rounded mb-5">

                    <!-- Shopping cart table -->
                    <div class="table-responsive">
                        <table class="table mb-0">
                            <thead>
                                <tr>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="p-2 px-3 text-uppercase">Product</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Price</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Quantity</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Remove</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                    <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <!--image-->
                                            <img src="/Images/top-01.jpg" class="card-img-top" alt="V Neck Button Blouse" width:70px;>
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Product Name</h5>
                                                <span class="text-muted font-weight-normal font-italic d-block">Category: </span>
                                            </div>
                                        </div>
                                    </th>
                                    
                                    <td class="border-0 align-middle" id="price"><strong>RM xx.xx</strong></td>
                                    <td class="border-0 align-middle">
                                        <input type="number" id="quantity" step="1" max="99" min="1" value="1" />
                                    </td>
                                    <td class="border-0 align-middle">
                                        del 
                                    </td>
                                    </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <!-- End -->

                </div>
            </div>
            <div class="row">
                <div class="col text-right pb-3 align-middle">
                    Total: <strong><asp:Label ID="LabelTotalPrice" runat="server">RM 999.00</asp:Label></strong>
                    <br /><br />
                    <a href="Default.aspx" class="btn btn-primary no-focus-outline">Continue Shopping</a>
                    <a href="Check Out.aspx" class="btn btn-primary no-focus-outline">Check Out</a>
                </div>
            </div>
        </div>
    </div>

    
</asp:Content>
