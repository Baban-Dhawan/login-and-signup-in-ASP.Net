<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logsign.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link href="logsign.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="header">
    <div id="loginmain">
    <div id="logo">
        <table class="style4">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <img src="data:image/png;base64,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" height="70" /></td>
            </tr>
        </table>
        </div>
    <div id="login">
        <table class="style1">
            <tr>
                <td class="auto-style2">Username/Email</td>
                <td class="auto-style1">Password</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtun" runat="server" CssClass="txtlogin" Height="32px" Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtpswd" runat="server" CssClass="txtlogin" 
                        TextMode="Password" Height="32px" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>
                        <asp:Button ID="btnlgn" runat="server" class="btn btn-primary btn-block btn-l" Text="Login" />
                    </td>
                </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td><a style="text-decoration:none;" href="#myModal" class="trigger-btn" data-toggle="modal" onclick="toggle()">Forget Password</a>
                    <div id="myModal" class="modal fade">
	<div class="modal-dialog modal-login">
		<div class="modal-content">
			<div class="modal-header">	

			
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
            <i class="fa fa-user-circle-o" aria-hidden="true" style="font-size:100px; margin-top:-30px; text-align:center;"></i>
			<div class="modal-body">

				<table>
				<tr>
				<td>
				<center><b> Trouble Logging In? </b></center>
				</td>
				</tr>
				<tr>
				<td>
				<p class="tl">Enter your email and we'll send you a link to get back into your account.</p>
				</td>
				</tr>
				<tr>
				<td>
						<input type="email" class="form-control" placeholder="Email"/>
						</td>
				</tr>
				<tr>
				<td>
                 
            <asp:Button ID="Button1" class="btn btn-primary btn-block btn-l" runat="server" Text="Send Link..."  style="margin-top:5px; "/>
 </td></tr>
 <tr><td><br/>
<div class="hr-theme-slash-2">
  <div class="hr-line"></div>
  <div class="hr-icon">OR</div>
  <div class="hr-line"></div>
</div>    
</td></tr>
<tr><td>
<center><a style="font-size:18px; color:black; text-decoration:none;" href="">Create New Account</a></center>
</td></tr>

				</table>
			</div>
			
		</div>
	</div>


</div>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
    </div>
    </div>
    <div id="main">
    <div id="left" class="style5">
        <asp:Image ID="Image2" runat="server" Height="380px" ImageUrl="img/connect.png"
            Width="664px" style="margin-top: 75px" />
        </div><div id="right">
        <table class="style2"  ><center>
                        <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td 
                    
                    style="font-weight: 700; text-align:center; font-size:36px; font-family: 'Arial Unicode MS'; ">
           
                    Create New Account</td>
            </tr>

            <tr>
                <td><br />
                    <center>
                    <asp:LinkButton style="text-decoration:none; border-radius:5px; margin-top:15px; border:0px solid; background: #4267B2; padding:10px 25px;  color:white;" ID="LinkButton1" runat="server">
                        <i class="fa fa-facebook-square" style="font-size:17px; color:white;">&nbsp;</i>
                          Log in with Facebook</asp:LinkButton>
                    </center>
                </td>
            </tr>
            <tr>
                <td ><br />
                <div class="hr-theme-slash-2">
  <div class="hr-line"></div>
  <div class="hr-icon">OR</div>
  <div class="hr-line"></div>
</div>    
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:TextBox ID="txtfn" runat="server" placeholder="First Name" CssClass="txtreg" Height="35px" Width="270px"></asp:TextBox>
                        </center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:TextBox ID="txtemail" runat="server" placeholder="Email" CssClass="txtreg" Height="35px" Width="270px" ></asp:TextBox>
                       </center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:TextBox ID="txtunm" runat="server" placeholder=" Username" CssClass="txtreg" Height="35px" Width="270px"></asp:TextBox></center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:TextBox ID="txtpswd1" runat="server" placeholder="Password" Class="txtreg" TextMode="Password" Height="35px" Width="270px"></asp:TextBox></center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                    <asp:Button ID="btnregister" runat="server" class="btn btn-primary btn-block btn-l" Font-Size="Medium" Height="40px" Text="Register Now !" Width="270px"  style="margin-top:5px;" /></center>
                </td>
            </tr>
            <tr><td>
                <p class="tc">By signing up, you agree to our <a style="text-decoration:none;" href="">Terms </a>, <a style="text-decoration:none;" href="">Data Policy</a> and <a style="text-decoration:none;" href="">Cookies Policy .</a></p>
                </td></tr>
            </center>

            </table>
            <br />
        </div>
    </div>
    <div id="footer">
            <div class="center">
                <div class="footer-btn">
                    <div class="center">
                    <div class="footer-btn-link">
                        <a href="">
                        <div class="footer-btn-link-name">About</div></a>
                    </div>
                    <div class="footer-btn-link">
                        <a href="">
                        <div class="footer-btn-link-name">Help</div></a>
                    </div>
                    <div class="footer-btn-link">
                        <a href="">
                        <div class="footer-btn-link-name">Privacy</div></a>
                    </div>
                     <div class="footer-btn-link">
                            <a href="">
                         <div class="footer-btn-link-name">Terms</div></a>

                    </div>
                        </div>
                </div>
                <div class="foot">
                    <div class="center">
                        © 2021
                    </div>
                </div>
            </div>
        </div>


    </div>
    </form>
</body>
</html>
