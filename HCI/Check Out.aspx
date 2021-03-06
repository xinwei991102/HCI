﻿<%@ Page Title="Check Out" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Check Out.aspx.cs" Inherits="HCI.Check_Out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--  <div>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">
            <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

            <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/checkout/">

            <!-- Bootstrap core CSS -->
            <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="form-validation.css" rel="stylesheet">
        </div>--%>
    <div class="row">
        <div class="col text-center">
            <h1 class="mt-2">
                <i class="fa fa-heart" style="font-size: medium"></i>&nbsp;Check Out&nbsp;<i class="fa fa-heart" style="font-size: medium"></i>
            </h1>
            <!-- breadcrumbs -->
            <nav aria-label="breadcrumb" style="display: inline-block;">
                <ol class="breadcrumb pb-3">
                    <li class="breadcrumb-item"><a href="Default.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="Cart.aspx">Cart</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Check Out</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 order-md-2 mb-4">
                <div class="bg-light shadow p-4">
                    <h3 class="d-flex justify-content-between align-items-center my-3">
                        <span style="letter-spacing: 0.1em;">Your Cart</span>
                        <span class="badge badge-secondary badge-pill" style="font-weight: 400;">2 items</span>
                    </h3>
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Short Sleeve Blazer x 1</h6>
                                <small class="text-muted">White</small>
                            </div>
                            <span class="text-muted">RM 45.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Short Sleeve Blazer x 1</h6>
                                <small class="text-muted">Blue</small>
                            </div>
                            <span class="text-muted">RM 45.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total (MYR)</span>
                            <strong>RM 90.00</strong>
                        </li>
                    </ul>

                    <div class="card p-2" style="width: 100%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Promo code" style="max-width: 100%">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-primary no-focus-outline">Redeem</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 order-md-1">
                <div class="bg-light shadow p-4">
                    <h3 class="my-3" style="letter-spacing: 0.1em;">Shipping Information</h3>
                    <div >
                        <div class="row">
                            <div class="col-md-6 mb-3 form-group validate-me">
                                <label for="firstName">First name</label>
                                <input type="text" class="form-control validate-me" id="firstName" placeholder="John" value="" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 form-group validate-me">
                                <label for="lastName">Last name</label>
                                <input type="text" class="form-control validate-me" id="lastName" placeholder="Doe" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 form-group validate-me">
                            <label for="phoneNumber">Phone number</label>
                            <div class="input-group">
                                <input type="text" class="form-control validate-me" id="phoneNumber" placeholder="012-3456789" required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Your phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3 form-group validate-me">
                            <label for="email">Email</label>
                            <input type="email" class="form-control validate-me" id="email" placeholder="you@example.com" required>
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3 form-group validate-me">
                            <label for="address">Address Line 1</label>
                            <input type="text" class="form-control validate-me" id="address" placeholder="Lot 123" required>
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3 form-group validate-me">
                            <label for="address2">Address Line 2<span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address2" placeholder="Jalan ABC">
                        </div>

                        <div class="mb-3 form-group validate-me">
                            <label for="address3">Address Line 3<span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address3" placeholder="Taman Bunga">
                        </div>

                        <div class="row">
                            <div class="col-md-5 mb-3 form-group validate-me">
                                <label for="country">Country</label>
                                <select class="custom-select d-block w-100 validate-me" id="country" required>
                                    <option value="">Choose...</option>
                                    <option>Malaysia</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3 form-group validate-me">
                                <label for="state">State</label>
                                <select class="custom-select d-block w-100 validate-me" id="state" required>
                                    <option value="">Choose...</option>
                                    <option>WP Kuala Lumpur</option>
                                    <option>WP Labuan</option>
                                    <option>WP Putrajaya</option>
                                    <option>Sarawak</option>
                                    <option>Sabah</option>
                                    <option>Selangor</option>
                                    <option>Johor</option>
                                    <option>Kedah</option>
                                    <option>Penang</option>
                                    <option>Perak</option>
                                    <option>Kelantan</option>
                                    <option>Negeri Sembilan</option>
                                    <option>Pahang</option>
                                    <option>Perlis</option>
                                    <option>Terengganu</option>
                                    <option>Melaka</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>
                            <div class="col-md-3 mb-3 form-group validate-me">
                                <label for="zip">Postcode</label>
                                <input type="text" class="form-control validate-me" id="zip" placeholder="58000" required>
                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>
                        <div class="custom-control custom-checkbox form-group validate-me">
                            <input type="checkbox" class="custom-control-input" id="save-info">
                            <label class="custom-control-label" for="save-info">Save this information for next time</label>
                        </div>
                        <hr class="mb-4">

                        <h3 class="mb-3" style="letter-spacing: 0.1em;">Payment Information</h3>

                        <div class="d-block my-3 form-group validate-me">
                            <div class="custom-control custom-radio">
                                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input validate-me" checked required>
                                <label class="custom-control-label" for="credit">Credit / Debit card</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input validate-me" required>
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3 form-group validate-me">
                                <label for="cc-name">Name on card</label>
                                <input type="text" class="form-control validate-me" id="cc-name" placeholder="John Doe" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 form-group validate-me">
                                <label for="cc-number">Card number</label>
                                <input type="text" class="form-control validate-me" id="cc-number" placeholder="1111 2222 3333 4444" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3 form-group validate-me">
                                <label for="cc-expiration">Expiration</label>
                                <input type="text" class="form-control validate-me" id="cc-expiration" placeholder="12/34" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3 form-group validate-me">
                                <label for="cc-expiration">CVV</label>
                                <input type="text" class="form-control validate-me" id="cc-cvv" placeholder="123" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button runat="server" ID="btnSubmit" Text="Continue to Payment" class="btn btn-primary btn-lg btn-block no-focus-outline" Style="max-width:100%;" PostBackUrl="~/Payment Complete.aspx"/>
                                <%--<button class="btn btn-primary btn-lg btn-block no-focus-outline" type="submit">Continue to payment</button>--%>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
