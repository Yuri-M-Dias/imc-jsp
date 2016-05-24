<%@ page import="java.util.DoubleSummaryStatistics" %><%--
  Created by IntelliJ IDEA.
  User: Yuri
  Date: 11-May-16
  Time: 8:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"
          media="screen,projection"/>
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>IMC</title>
</head>
<body class="row">

<%
    String pesoStr = request.getParameter("peso");
    String alturaStr = request.getParameter("altura");
    String sexoStr = request.getParameter("sexo");
    if (pesoStr == null) pesoStr = "0";// Forgive me programming gods for this
    if (alturaStr == null) alturaStr = "0";
    if (sexoStr == null) sexoStr = "";
    pesoStr = pesoStr.replaceAll("/,", "/.");
    alturaStr = alturaStr.replaceAll("/,", "/.");
    double peso = Double.parseDouble(pesoStr);
    double altura = Double.parseDouble(alturaStr);
%>

<nav>
    <div class="nav-wrapper teal darken-2">
        <a href="#" class="brand-logo center">Calculadora de IMC
            simplificada</a>
    </div>
</nav>


<% if (peso != 0 || altura != 0) {
    // Ignora sexo
    double imc = peso / (altura * altura);
%>
<div class="col s6 offset-s3 card-panel teal lighten-2">
    <p> Resultado do cálculo IMC: <%= imc %>
    </p>
    <% if (imc < 17) { %>
    <b>Estás muito abaixo do peso!</b>
    <% } %>
    <% if (imc >= 17 && imc < 18.5) { %>
    <b>Estás abaixo do peso!</b>
    <% } %>
    <% if (imc >= 18.5 && imc < 25) { %>
    <b>Estás com peso normal!</b>
    <% } %>
    <% if (imc >= 25 && imc < 30) { %>
    <b>Estás acima do peso!</b>
    <% } %>
    <% if (imc >= 30 && imc < 35) { %>
    <b>Estás com obesidade I!</b>
    <% } %>
    <% if (imc >= 35 && imc < 40) { %>
    <b>Estás com obesidade II (severa)!</b>
    <% } %>
    <% if (imc >= 40) { %>
    <b>Estás com obesidade III (mórbida)!</b>
    <% } %>
</div>
<% } %>

<form id="form" class="col s6 offset-s3">
    <div class="row">
        <div class="input-field col s12">
            <input id="peso" name="peso" type="text"
                   placeholder="<%= peso %>" class="validate">
            <label for="peso">Peso</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s12">
            <input id="altura" type="text" name="altura"
                   placeholder="<%= altura %>" class="validate">
            <label for="altura">Altura</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col s12">
            <select id="sexo" name="sexo">
                <option value="M">Masculino</option>
                <option value="F">Feminino</option>
            </select>
            <label>Sexo</label>
        </div>
    </div>

    <div class="row">
        <div class="input-field col offset-s4">
            <button class="twaves-effect waves-light btn-large">
                Calcular IMC
            </button>
        </div>
    </div>

</form>

<script type="text/javascript"
        src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>

<script type="text/javascript"> // Enough JS to activate Materialize
$(document).ready(function () {
    $('select').material_select();
});
</script>
</body>
</html>
