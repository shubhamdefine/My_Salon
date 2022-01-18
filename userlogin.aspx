<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="My_Salon.user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <div class="container" style="border:solid 2px crimson"> 
    <br />
    <br />
   <center>
        <img src="images/user1.jpg" />
        <br /><br />

        <h3 style="font-weight:bold">User LogIn</h3>
       <br />
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <asp:TextBox ID="username" class="form-control" runat="server" placeholder="Enter Your Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Is Required" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
                
                <br />
                <div class="form-text">We'll never share your details with anyone else.<br />
                    <br />
                </div>
            </div>
            <div class="mb-3">
                <label for="pass" class="form-label">Password</label>
                <asp:TextBox ID="pass" class="form-control"  placeholder="Enter Your Password"  textmode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Is Required" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </div>

       <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success" Width="145px" OnClick="Button1_Click" />
            
        </center>
       <br />
         <br />
       </div>
    <br />
         <br />
    
    
</asp:Content>
