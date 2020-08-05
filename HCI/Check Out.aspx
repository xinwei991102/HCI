<%@ Page Title="Check Out" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Check Out.aspx.cs" Inherits="HCI.Check_Out" %>

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

    <div class="container">
        <div class="row">
            <div class="col-md-6 order-md-2 mb-4">
                <div class="bg-light shadow p-4">
                    <h3 class="d-flex justify-content-between align-items-center my-3">
                        <span style="letter-spacing: 0.1em;">Your Cart</span>
                        <span class="badge badge-secondary badge-pill">3</span>
                    </h3>
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Product name</h6>
                                <small class="text-muted">Brief description</small>
                            </div>
                            <span class="text-muted">RM 12.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Second product</h6>
                                <small class="text-muted">Brief description</small>
                            </div>
                            <span class="text-muted">RM 8.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Third item</h6>
                                <small class="text-muted">Brief description</small>
                            </div>
                            <span class="text-muted">RM 5.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <div class="text-success">
                                <h6 class="my-0">Promo code</h6>
                                <small>EXAMPLECODE</small>
                            </div>
                            <span class="text-success">-RM 5.00</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                            <span>Total (MYR)</span>
                            <strong>RM 20.00</strong>
                        </li>
                    </ul>

                    <form class="card p-2" style="width: 100%">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Promo code" style="max-width: 100%">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-primary no-focus-outline">Redeem</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6 order-md-1">
                <div class="bg-light shadow p-4">
                    <h3 class="my-3" style="letter-spacing: 0.1em;">Shipping Information</h3>
                    <form class="needs-validation" novalidate>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">First name</label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Last name</label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="phoneNumber">Phone number</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="phoneNumber" placeholder="e.g: 012-3456789" required>
                                <div class="invalid-feedback" style="width: 100%;">
                                    Your phone number is required.
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="email">Email <span class="text-muted">(Optional)</span></label>
                            <input type="email" class="form-control" id="email" placeholder="you@example.com">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address">Address Line 1</label>
                            <input type="text" class="form-control" id="address" placeholder="Lot 123" required style="max-width:100%;">
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="address2">Address Line 2<span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address2" placeholder="Jalan ABC" style="max-width:100%;">
                        </div>

                        <div class="mb-3">
                            <label for="address3">Address Line 3<span class="text-muted">(Optional)</span></label>
                            <input type="text" class="form-control" id="address3" placeholder="Taman Bunga" style="max-width:100%;">
                        </div>

                        <div class="row">
                            <div class="col-md-5 mb-3">
                                <label for="country">Country</label>
                                <select class="custom-select d-block w-100" id="country" required>
                                    <option value="">Choose...</option>
                                    <option>Malaysia</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="state">State</label>
                                <select class="custom-select d-block w-100" id="state" required>
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
                            <div class="col-md-3 mb-3">
                                <label for="zip">Postcode</label>
                                <input type="text" class="form-control" id="zip" placeholder="" required>
                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="save-info">
                            <label class="custom-control-label" for="save-info">Save this information for next time</label>
                        </div>
                        <hr class="mb-4">

                        <h4 class="mb-3" style="letter-spacing:0.1em;">Payment Information</h4>

                        <div class="d-block my-3">
                            <div class="custom-control custom-radio">
                                <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                <label class="custom-control-label" for="credit">Credit / Debit card</label>
                            </div>
                            <div class="custom-control custom-radio">
                                <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name">Name on card</label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number">Card number</label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                        <button class="btn btn-primary btn-lg btn-block no-focus-outline" type="submit">Continue to checkout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
