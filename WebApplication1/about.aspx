<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="WebApplication1.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link rel="stylesheet" href="style.css">--->
	<!--Code by Munna Ahmed!(:-->
    <title></title>
</head>
<style>
    html {
    background: black;
    height: 100%;
    overflow: hidden;
}

body {
    margin: 0;
    padding: 0;
    height: 100%;
}
</style>
<script type="text/javascript"> 
    window.onload = function () {
        document.getElementById("audio_mp3").play();
    }
</script>
<body style="background-color: white">
    <center>
    <h4>Our library best in town</h4>
        <p> We arrange music evenings come and visit our library</p>
        </center>
<audio id="audio_mp3" src="audio/audio.mp3" loop="loop"></audio>
 <canvas id="Matrix" style="width: 100%; height: 100%;"></canvas>
    <!--<script src="script.js"></script>-->

<script>
    
const canvas = document.getElementById('Matrix');
const context = canvas.getContext('2d');

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

const katakana = 'অআইঈউঊঋএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলবশষসহড়ঢ়য়অআইঈউঊঋএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলবশষসহড়ঢ়য়অআইঈউঊঋএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলবশষসহড়ঢ়য়অআইঈউঊঋএঐওঔকখগঘঙচছজঝঞটঠডঢণতথদধনপফবভমযরলবশষসহড়ঢ়য়';
const latin = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const nums = '0123456789';
const alphabet = katakana + latin + nums;
const fontSize = 16;
const columns = canvas.width/fontSize;
const rainDrops = [];

for( let x = 0; x < columns; x++ ) {
    rainDrops[x] = 1;
}

const draw = () => {
    context.fillStyle = 'rgba(0, 0, 0, 0.05)';
    context.fillRect(0, 0, canvas.width, canvas.height);
    
    context.fillStyle = '#0F0';
    context.font = fontSize + 'px monospace';

    for(let i = 0; i < rainDrops.length; i++)
    {
        const text = alphabet.charAt(Math.floor(Math.random() * alphabet.length));
        context.fillText(text, i*fontSize, rainDrops[i]*fontSize);
        
        if(rainDrops[i]*fontSize > canvas.height && Math.random() > 0.975){
            rainDrops[i] = 0;
        }
        rainDrops[i]++;
    }
};
setInterval(draw, 30);
</script>
<!--Code by Munna Ahmed!(:-->
</body>
</html>
</asp:Content>
