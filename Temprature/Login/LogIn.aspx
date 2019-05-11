<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="../images/icons/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css" />
    <link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/util.css" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <style>
        .custom-select {
            display: inline-block;
            width: 100%;
            height: calc(2.25rem + 2px);
            padding: 0.375rem 1.75rem 0.375rem 0.75rem;
            line-height: 1.5;
            color: #495057;
            vertical-align: middle;
            background: #fff url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 4 5'%3E%3Cpath fill='%23343a40' d='M2 0L0 2h4zm0 5L0 3h4z'/%3E%3C/svg%3E") no-repeat right 0.75rem center;
            background-size: 8px 10px;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            -webkit-appearance: none;
            -moz-appearance: none;
        }
    </style>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt">
                    <img src="../images/img-01.png" alt="IMG" />
                </div>

                <form class="login100-form validate-form" runat="server" id="Form1">
                    <span class="login100-form-title">
                        <asp:Label ID="Label4" runat="server" Text="Login"></asp:Label>
                    </span>
                    <asp:Label ID="Errormsg" runat="server" Text=""></asp:Label>
                    <div class="wrap-input100 validate-input">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="custom-select">
                            <asp:ListItem Value="0">SELECT-ROLE</asp:ListItem>
                            <asp:ListItem Value="1">DOCTOR</asp:ListItem>
                            <asp:ListItem Value="2">PATIENTS</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Uid") %>' Visible="false"></asp:Label>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100"></span>
                    </div>

                    <div id="MobileNumber" style="display: none" class="wrap-input100 validate-input IsMobileNumber">
                        <asp:TextBox ID="txtMobId" runat="server" class="input100" placeholder="MobileNumber"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtMobId" ErrorMessage="Please enter 10 digit mobile number"
                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>

                    <div id="Password" style="display: none" class="wrap-input100 validate-input" data-validate="Password is required">
                        <asp:TextBox ID="Pass" runat="server" class="input100" placeholder="PassWord" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div id="Uname" style="display: none" class="wrap-input100 validate-input" data-validate="User name is required">
                        <asp:TextBox ID="Unam" runat="server" class="input100" placeholder="UserName"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="LogIn" OnClick="Button1_Click" />

                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">Forgot
                        </span>
                        <a class="txt2" href="Forgot.aspx">Password?
                            <br />
                            <br />
                        </a>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </div>

                    <div class="text-center p-t-100">
                        <a class="txt2" href="../Home.aspx">Find Hospital
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="../vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="../vendor/bootstrap/js/popper.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/select2/select2.min.js"></script>
    <script src="../vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <script src="../js/main.js"></script>
    <script>
        function IsMobileNumber(txtMobId) {
            var mob = /^[1-9]{1}[0-9]{9}$/;
            var txtMobile = document.getElementById("txtMobId");
            if (mob.test(txtMobile.value) == false) {
                alert("Please enter valid mobile number.");
                txtMobile.focus();
                return false;
            }
            return true;
    </script>

    <script>
            $(document).ready(function () {
                $('#DropDownList1').on('change', function () {
                    if (this.value == '0') {
                        $("#MobileNumber").hide();
                        $("#Password").hide();
                        document.getElementById("Label4").textContent = "Login";
                    }

                    else if (this.value == '1') {
                        $("#MobileNumber").show();
                        $("#Uname").show();
                        $("#Password").show();
                        document.getElementById("Label4").textContent = "Doctor Login";
                    }
                    if (this.value == '2') {
                        $("#MobileNumber").show();
                        $("#Password").show();
                        $("#Uname").show();

                        document.getElementById("Label4").textContent = "Patient Login";
                    }
                });
            });
    </script>
</body>
</html>
