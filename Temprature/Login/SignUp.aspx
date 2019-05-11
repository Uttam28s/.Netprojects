<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
  <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" >
					<img src="../images/RPMLogo2.png" alt="IMG"/>
				</div>
				<form class="login100-form validate-form" runat="server" id="Form1">
					<span class="login100-form-title">
						Patient SignUp
					</span>

                     <div class="wrap-input100 validate-input" data-validate = "Required UserName">
                         <asp:TextBox ID="Uname" runat="server" class="input100" placeholder="UserName"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                         <asp:TextBox ID="Email" runat="server" class="input100" placeholder="Email"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
                         <asp:TextBox ID="Pass" runat="server" class="input100" placeholder="PassWord"  TextMode="Password"></asp:TextBox>

						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                         <asp:TextBox ID="Mnumber" runat="server" class="input100" placeholder="MobileNumber"></asp:TextBox>

						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-mobile" aria-hidden="true"></i>
						</span>
					</div>
					
                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                         <asp:TextBox ID="add" runat="server" class="input100" placeholder="Address" TextMode="MultiLine"></asp:TextBox>

						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-book" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<asp:Button ID="Button1" runat="server" class="login100-form-btn" Text="SignUp" OnClick="Button1_Click" />
					</div>
                    	<div class="text-center p-t-100">
						
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
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<script src="../js/main.js"></script>

</body>
</html>
