﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="terms.aspx.cs" Inherits="WebApplication1.terms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<h1>RETURN ON TIME</h1>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        
@keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}
@-webkit-keyframes move-background {
  from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

@-moz-keyframes move-background {    
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

    @-webkit-keyframes move-background {
	from {
		-webkit-transform: translate3d(0px, 0px, 0px);
	}
	to { 
		-webkit-transform: translate3d(1000px, 0px, 0px);
	}
}

.background-container{
	position: fixed;
	top: 0;
	left:0;
	bottom: 0;
	right: 0;
}

.stars {
 background: black url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/stars.png) repeat;
 position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	display: block;
  	z-index: 0;
}

.twinkling{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/twinkling.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 2;
    
    -moz-animation:move-background 70s linear infinite;
  -ms-animation:move-background 70s linear infinite;
  -o-animation:move-background 70s linear infinite;
  -webkit-animation:move-background 70s linear infinite;
  animation:move-background 70s linear infinite;
	
}

.clouds{
	width:10000px;
	height: 100%;
	background: transparent url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/clouds_repeat.png") repeat;
	background-size: 1000px 1000px;
    position: absolute;
    right: 0;
    top: 0;
    bottom: 0;
    z-index: 3;

   -moz-animation:move-background 150s linear infinite;
  -ms-animation:move-background 150s linear infinite;
  -o-animation:move-background 150s linear infinite;
  -webkit-animation:move-background 150s linear infinite;
  animation:move-background 150s linear infinite;
}
img{
 display:none;
}

h1 {
	margin-top: 20rem;
}

    </style>
    <div class="background-container">
<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1231630/moon2.png" alt="">
<div class="stars">
	<center>
	<h1 style="color:red" >Return on time</h1>

	<h1 style="color:red" > OR LOSSE YOUR LIBRARY TICKET</h1>

		<a href="homepage.aspx">BACK</a>
		        

		</center>
</div>
<div class="twinkling">

</div>
<div class="clouds">
	
</div>
		<div>
			<a style="color:red" href="homepage.aspx">Bact to home</a>
		</div>
		  <script type="text/javascript">
	setTimeout('location.href="homepage.aspx"',8000);
          </script>

</asp:Content>
