<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="icon" type="image/png" href="../images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min. .Zcss"/>
	<link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css"/>
	<link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css"/>
	<link rel="stylesheet" type="text/css" href="../css/util.css"/>
	<link rel="stylesheet" type="text/css" href="../css/main.css"/>
</head>
<body>
  <div class="limiter">
		<div class="container-login100">
			<form class="login100-form validate-form" runat="server" id="Form1">
					<span class="login100-form-title">
						Forgot Password
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<asp:TextBox ID="Pass" runat="server" class="input100" placeholder="Enter Your New PassWord"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Uid") %>' Visible="false"></asp:Label>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn"> 
						<asp:Button ID="Done" runat="server" class="login100-form-btn" Text="OK" OnClick="Done_Click" />
                        
					</div>
				</form>
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
