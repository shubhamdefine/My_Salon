﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="My_Salon.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--//banner-section-->
    <!--//main-header-->

    <!-- breadcrumb -->
    <div class="w3_breadcrumb">
        <div class="breadcrumb-inner">
            <ul>
                <li><a href="index.html">Home</a> <i>//</i></li>

                <li>Contact</li>
            </ul>
        </div>
    </div>
    <!-- //breadcrumb -->
    <!--/content-inner-section-->
    <div class="w3_content_agilleinfo_inner">
        <div class="container">
            <div class="title-agileits">
                <h2 class="w3l-agile">Contact Us</h2>
            </div>
            <div class="w3_mail_grids">
                <form action="#" method="post">
                    <div class="col-md-6 w3_agile_mail_grid">
                        <input type="text" placeholder="Your Name" required="">
                        <input type="email" placeholder="Your Email" required="">
                        <input type="text" placeholder="Your Phone Number" required="">
                    </div>
                    <div class="col-md-6 w3_agile_mail_grid">
                        <textarea name="Message" placeholder="Your Message" required=""></textarea>
                        <input type="submit" value="Submit">
                    </div>
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
        <div class=" map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12947831.742778081!2d-95.665!3d37.599999999999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1422444552833"></iframe>
        </div>
    </div>
    <!--//content-inner-section-->
</asp:Content>
