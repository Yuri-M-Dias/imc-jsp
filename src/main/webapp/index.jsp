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
    <title>IMC</title>
</head>
<body>
<h2>Calculadora de IMC</h2>

<form>
    Peso: <input name="peso">
    <br>
    Altura: <input name="altura">
    <br>
    Sexo: <input name="sexo">
    <button>Calcular IMC</button>
</form>

<%
    String pesoStr = request.getParameter("peso");
    String alturaStr = request.getParameter("altura");
    String sexoStr = request.getParameter("sexo");
    double peso = (pesoStr == null) ? 0 : Double.parseDouble(pesoStr);
    double altura = (alturaStr == null) ? 0 : Double.parseDouble(alturaStr);
    double imc = peso / (altura * altura);
%>

<% if(peso != 0 || altura != 0){ %>
<b><% out.println("IMC: " + imc); %></b>
<% } %>

</body>
</html>
