<%--
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

    <nav>
        <div class="nav-wrapper teal darken-2">
            <a href="#" class="brand-logo center">Calculadora de IMC
                simplificada</a>
        </div>
    </nav>


    <% if(request.getAttribute("imc") != null) {
        java.util.Formatter formatter = new java.util.Formatter();
        %>
    <div class="col s6 offset-s3 card-panel teal lighten-2">
        <p> Resultado do cálculo IMC: ${imc}
        </p>
        <b>${message}</b>
    </div>
    <% } %>

    <form id="form" class="col s6 offset-s3" action="imc">
        <div class="row">
            <div class="input-field col s12">
                <input id="peso" name="peso" type="text"
                       class="validate">
                <label for="peso">Peso</label>
            </div>
        </div>

        <div class="row">
            <div class="input-field col s12">
                <input id="altura" type="text" name="altura" class="validate">
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
