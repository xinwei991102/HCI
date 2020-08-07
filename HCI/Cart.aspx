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
                                <% for (int i = 0; i < 2; i++)
                                    { %>
                                    <tr>
                                    <th scope="row" class="border-0">
                                        <div class="p-2">
                                            <!--image-->
                                            <img src="/Images/product-image-01.jpg" alt="V Neck Button Blouse" style="width:120px;">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Short Sleeve Blazer</h5>
                                                <span class="text-muted font-weight-normal font-italic d-block">White </span>
                                            </div>
                                        </div>
                                    </th>
                                    
                                    <td class="border-0 align-middle" id="price"><strong>RM 45.00</strong></td>
                                    <td class="border-0 align-middle">
                                        <div class="input-group">
                                        <span>
                                        <input type='button' value='-' class='qtyminus btn btn-secondary mr-0 no-focus-outline' field='quantity' style="width: 30px; border-radius: 5px 0px 0px 5px; height: 30px; padding: 0;" /></span>
                                        <input type='text' name='quantity' value='1' class='qty no-focus-outline' style="max-width: 60px; text-align: center; border-radius: 0px; border: 1px solid #666666 !important; height: 30px;" />
                                        <span>
                                        <input type='button' value='+' class='qtyplus btn btn-secondary ml-0 no-focus-outline' field='quantity' style="width: 30px; border-radius: 0px 5px 5px 0px; height: 30px; padding: 0;" /></span>
                                        </div>
                                    </td>
                                    <td class="border-0 align-middle btn-group-toggle" data-toggle="buttons">
                                        <button class="btn btn-white">X</button>
                                        
                                    </td>
                                    </tr>
                                 <% } %>
                            </tbody>
                        </table>
                    </div>
                    <!-- End -->

                </div>
            </div>

            <div class="row">
                <div class="col text-right pb-3 align-middle">
                    Total: <strong><asp:Label ID="LabelTotalPrice" runat="server">RM 90.00</asp:Label></strong>
                </div>
            </div>

            <div class="row">
                <div class="col pb-3 text-right align-middle">                    
                    <a href="Default.aspx" class="btn btn-primary no-focus-outline">Continue Shopping</a>
                    <a href="Check Out.aspx" class="btn btn-primary no-focus-outline">Check Out</a>
                </div>
            </div>
        </div>
    </div>

    
</asp:Content>
