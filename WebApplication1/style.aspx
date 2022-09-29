<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="style.aspx.cs" Inherits="WebApplication1.style" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <style>
                html {
                    background: white;
                    height: auto;
                    overflow: visible;
                }
body {
    margin: 0; auto;
    padding: 0;
    height: auto;
    position:relative;
}
</style>
<body>
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
    const columns = canvas.width / fontSize;
    const rainDrops = [];

    for (let x = 0; x < columns; x++) {
        rainDrops[x] = 1;
    }

    const draw = () => {
        context.fillStyle = 'rgba(1, 2, 3, 0.05)';
        context.fillRect(0, 0, canvas.width, canvas.height);

        context.fillStyle = '#A52A2A';
        context.font = fontSize + 'px monospace';

        for (let i = 0; i < rainDrops.length; i++) {
            const text = alphabet.charAt(Math.floor(Math.random() * alphabet.length));
            context.fillText(text, i * fontSize, rainDrops[i] * fontSize);

            if (rainDrops[i] * fontSize > canvas.height && Math.random() > 0.975) {
                rainDrops[i] = 0;
            }
            rainDrops[i]++;
        }
    };
    setInterval(draw, 30);
</script>
            
</asp:Content>
