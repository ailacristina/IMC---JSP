<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IMC</title>
    </head>
    <body>
        <%
            double respIMC = Double.parseDouble((String) request.getAttribute("resultado"));           
            if (respIMC < 18.5) {
        %>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Você está abaixo do peso!</p>
        
        <% } if ((respIMC >= 18.5) && (respIMC < 24.9)) {%>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Peso ideal</p>
        
        <% } if ((respIMC >= 25.0) && (respIMC < 29.9)) {%>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Sobrepeso</p>
        
        <% }  if ((respIMC >= 30.0) && (respIMC < 34.9)) {%>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Obesidade grau I</p>
        
        <% } if ((respIMC >= 35.0) && (respIMC < 39.9)) {%>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Obesidade grau II</p>
        
        <% } if (respIMC >= 40.0) {%>
        <p>Seu IMC é <%= respIMC%>! </p>
        <p> Obesidade grau III</p>
        
        <% }%>
    </body>
</html>
