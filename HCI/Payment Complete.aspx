<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment Complete.aspx.cs" Inherits="HCI.Payment_Complete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center">
        <div class="row">
            <div class="col text-center">
                <h1 class="mt-2">
                    <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Payment Complete&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
                </h1>
                <!-- breadcrumbs -->
                <nav aria-label="breadcrumb" style="display: inline-block;">
                    <ol class="breadcrumb pb-3">
                        <li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
                        <li class="breadcrumb-item"><a href="Cart.aspx">Cart</a></li>
                        <li class="breadcrumb-item">Check Out</li>
                        <li class="breadcrumb-item active" aria-current="page">Payment Complete</li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col text-center">
                <div class="shadow p-5" style="max-width: 800px; display:inline-block;">
                    <h3 class="mb-3">Your payment is completed!</h3>
                    <p style="font-size: larger;">Your parcel tracking information will be updated through e-mail and SMS.
                        <br />
                        Please check your inbox regularly.</p>
                    <p style="font-size: larger;">Thank you for shopping with us!</p>
                    <a href="Default.aspx" type="button" class="btn btn-primary no-focus-outline" style="font-size: larger;">Back to Home Page</a>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
