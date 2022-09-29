<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3">
    </div>


    <style>
        html {
            height: 100%;
        }

        body {
            margin: 0;
        }

        .bg {
            animation: slide 3s ease-in-out infinite alternate;
            background-image: linear-gradient(-60deg, #6c3 50%, #09f 50%);
            bottom: 0;
            left: -50%;
            opacity: .5;
            position: fixed;
            right: -50%;
            top: 0;
            z-index: -1;
        }

        .bg2 {
            animation-direction: alternate-reverse;
            animation-duration: 4s;
        }

        .bg3 {
            animation-duration: 5s;
        }

        .content {
            background-color: rgba(255,255,255,.8);
            border-radius: .25em;
            box-shadow: 0 0 .25em rgba(0,0,0,.25);
            box-sizing: border-box;
            left: 50%;
            padding: 10vmin;
            position: fixed;
            text-align: center;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        h1 {
            font-family: monospace;
        }

        #footer1, #footer2 {
            display: none;
        }

        @keyframes slide {
            0% {
                transform: translateX(-25%);
            }

            100% {
                transform: translateX(25%);
            }


        }
    </style>

    <div class="container">
        <div class="col-md-6 mx-auto">
            <div class="content">
                <div class="card">

                    <div class="card-body">

                        <div class="row">

                            <div class="col">

                                <center>
                                    <img width="150px" src="img/adminlogin.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>

                                <label>Password</label>

                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="d-grid gap-2 mb-1 my-2">
                                    <asp:Button Class="btn btn-success btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                                </div>

                            </div>

                        </div>
                    </div>
                    <a href="homepage.aspx">Bact to home</a>
                    <br />
                    <br />

                </div>

            </div>
        </div>
        <div class="row">
        </div>
    </div>

</asp:Content>
