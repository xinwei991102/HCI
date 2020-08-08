<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="HCI.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col text-center">
            <h1 class="mt-2">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Cart&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h1>
            <!-- breadcrumbs -->
            <nav aria-label="breadcrumb" style="display: inline-block;">
                <ol class="breadcrumb pb-3">
                    <li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Cart</li>
                </ol>
            </nav>
        </div>
    </div>

    <div class="pb-5">
        <div class="container shadow">
            <div class="row">
                <div class="col-lg-12 p-3 bg-white rounded">

                    <!-- Shopping cart table -->
                    <div class="table-responsive">
                        <table class="table mb-0">
                            <thead>
                                <tr>
                                    <th scope="col" class="border-0 bg-light"></th>
                                    <th scope="col" class="border-0 bg-light">
                                        <div class="py-2 text-uppercase">Product</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light text-center">
                                        <div class="py-2 text-uppercase">Quantity</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light text-center">
                                        <div class="py-2 text-uppercase">Subtotal</div>
                                    </th>
                                    <th scope="col" class="border-0 bg-light text-center">
                                        <div class="py-2 text-uppercase">Remove</div>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="border-bottom">
                                    <td scope="row" class="border-0 p-0 align-middle text-center" style="width: 30px;">
                                        <input type="checkbox" style="height: 20px; width: 20px;" checked>
                                    </td>
                                    <td scope="row" class="border-0 p-0">
                                        <div class="p-2">
                                            <!--image-->
                                            <img src="/Images/top-01.jpg" alt="V Neck Button Blouse" style="width: 120px;">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Short Sleeve Blazer</h5>
                                                <span class="text-muted font-weight-normal font-italic d-block">White </span>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="border-0 align-middle p-0 mx-auto" style="width: 120px;">
                                        <div class="input-group">
                                            <span>
                                                <input type='button' value='-' class='qtyminus btn btn-secondary mr-0 no-focus-outline' field='quantity1' style="width: 30px; border-radius: 5px 0px 0px 5px; height: 30px; padding: 0;" /></span>
                                            <input type='text' name='quantity1' value='1' class='qty no-focus-outline' style="max-width: 60px; text-align: center; border-radius: 0px; border: 1px solid #666666 !important; height: 30px;" />
                                            <span>
                                                <input type='button' value='+' class='qtyplus btn btn-secondary ml-0 no-focus-outline' field='quantity1' style="width: 30px; border-radius: 0px 5px 5px 0px; height: 30px; padding: 0;" /></span>
                                        </div>
                                    </td>
                                    <td class="border-0 align-middle p-0 text-center" id="price1" style="width: 150px;"><strong>RM 45.00</strong></td>
                                    <td class="border-0 align-middle p-0 text-center" style="width: 130px;">
                                        <button class="btn btn-danger no-focus-outline"><span class="fa fa-trash"></span></button>
                                    </td>
                                </tr>
                                <tr class="border-bottom">
                                    <td scope="row" class="border-0 p-0 align-middle text-center">
                                        <input type="checkbox" style="height: 20px; width: 20px;" checked>
                                    </td>
                                    <th scope="row" class="border-0 p-0">
                                        <div class="p-2">
                                            <!--image-->
                                            <img src="/Images/top-01.jpg" alt="V Neck Button Blouse" style="width: 120px;">
                                            <div class="ml-3 d-inline-block align-middle">
                                                <h5 class="mb-0">Short Sleeve Blazer</h5>
                                                <span class="text-muted font-weight-normal font-italic d-block">Blue </span>
                                            </div>
                                        </div>
                                    </th>
                                    <td class="border-0 align-middle p-0 mx-auto" style="width: 120px;">
                                        <div class="input-group">
                                            <span>
                                                <input type='button' value='-' class='qtyminus btn btn-secondary mr-0 no-focus-outline' field='quantity2' style="width: 30px; border-radius: 5px 0px 0px 5px; height: 30px; padding: 0;" /></span>
                                            <input type='text' name='quantity2' value='1' class='qty no-focus-outline' style="max-width: 60px; text-align: center; border-radius: 0px; border: 1px solid #666666 !important; height: 30px;" />
                                            <span>
                                                <input type='button' value='+' class='qtyplus btn btn-secondary ml-0 no-focus-outline' field='quantity2' style="width: 30px; border-radius: 0px 5px 5px 0px; height: 30px; padding: 0;" /></span>
                                        </div>
                                    </td>
                                    <td class="border-0 align-middle p-0 text-center" id="price2"><strong>RM 45.00</strong></td>
                                    <td class="border-0 align-middle p-0 text-center">
                                        <button class="btn btn-danger no-focus-outline"><span class="fa fa-trash"></span></button>
                                    </td>
                                </tr>
                                <tr class="pb-0">
                                    <td colspan="2">
                                        <div class="form-check p-1 ml-2">
                                            <input class="form-check-input mr-1" type="checkbox" value="" id="defaultCheck1" style="height: 20px; width: 20px;" checked>
                                            <label class="form-check-label m-1 ml-3" for="defaultCheck1">
                                                Select all
                                            </label>
                                        </div>
                                    </td>
                                    <td class="text-right align-middle">Total: </td>
                                    <td class="text-center align-middle">
                                        <div style="font-size: large;">
                                            <strong>RM 90.00</strong>
                                        </div>
                                    </td>
                                    <td class="text-center align-middle"><a href="Check Out.aspx" class="btn btn-primary no-focus-outline">Check Out</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- End -->
                </div>
            </div>
        </div>
    </div>


</asp:Content>
