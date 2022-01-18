<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="My_Salon.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container" style="border: solid 2px crimson">
        <br />
        <br />
        <center>
            <img src="images/user3.jpg" />
            <br />
            <br />

            <h3 style="font-weight: bold">User Sign Up</h3>
            <br />
            <div class="mb-3">
                <label for="fname" class="form-label">Full Name</label>
                <asp:TextBox ID="fname" class="form-control" runat="server" placeholder="Enter Your Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Full Name Is Required" ControlToValidate="fname" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email-ID</label>
                <asp:TextBox ID="email" class="form-control" placeholder="Enter Your Email-ID" TextMode="email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email-ID Is Required" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <label for="mobile" class="form-label">Mobile Number</label>
                <asp:TextBox ID="mobile" class="form-control" placeholder="Enter Your Mobile Number" TextMode="number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile Number Is Required" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[0-9]{10}" ErrorMessage="Please Enter 10 digits" ForeColor="Red" ControlToValidate="mobile"></asp:RegularExpressionValidator>
            </div>
            <div class="mb-3">
                <label for="user" class="form-label">Username</label>
                <asp:TextBox ID="user" class="form-control" placeholder="Enter Your Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Username Is Required" ControlToValidate="user" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <label for="pass" class="form-label">Password</label>
                <asp:TextBox ID="pass" class="form-control" placeholder="Enter Your Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password Is Required" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="mb-3">
                <label for="cpass" class="form-label">Confirm Password</label>
                <asp:TextBox ID="cpass" class="form-control" placeholder="Confirm Your Password" TextMode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Confirm Password Is Required" ControlToValidate="cpass" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password does Not Matched" ControlToValidate="cpass" ControlToCompare="pass" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div>
                 <span>Select Gender</span><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Male" ></asp:Label>
                 <asp:RadioButton ID="male" runat="server" GroupName="gender" OnCheckedChanged="male_CheckedChanged"/>
                <br /> 
                <asp:Label ID="Label2" runat="server" Text="Female"></asp:Label>
                 <asp:RadioButton ID="female" runat="server" GroupName="gender" OnCheckedChanged="female_CheckedChanged"/>    
                <br /> 
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Other"></asp:Label>
                 <asp:RadioButton ID="other" runat="server" GroupName="gender" OnCheckedChanged="other_CheckedChanged"/>         
                 <br />
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-danger" Width="145px" OnClick="Button1_Click1" />

        </center>
        <br />
        <br />
    </div>
    <br />
    <br />
</asp:Content>
