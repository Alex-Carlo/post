<%-- 
    Document   : index
    Created on : 31/05/2021, 12:44:04 PM
    Author     : ALEX CARLO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login Post</title>


        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="js/login.js" type="text/javascript"></script>
        <link href="css/csslogin.css" rel="stylesheet" type="text/css"/>

        <!--===============================================================================================-->
    </head>
    <body>

        <!------ Include the above in your HEAD tag ---------->
        <%!
            String estado;
        %>
        <%
            estado = (String) request.getAttribute("estado");
            if (estado == null) {
                estado = "";
            }
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row">
                                <h1><%=estado%></h1>
                                <div class="col-xs-6">
                                    <a href="#" class="active" id="login-form-link">Iniciar sesión</a>
                                </div>
                                <div class="col-xs-6">
                                    <a href="#" id="register-form-link">Regístrate ahora</a>
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form id="login-form" action="Validar" method="POST"  role="form" style="display: block;">
                                        <div class="form-group">
                                            <input type="text" name="txtuser" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="txtpass" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                                        </div>
                                        <div class="form-group text-center">
                                            <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                            <label for="remember"> Recordarme</label>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="accion" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Ingresar">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="text-center">
                                                        <a href="#" tabindex="5" class="forgot-password">¿Has olvidado tu contraseña?</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form id="register-form" action="Controlador?accion=agregarUsuario" method="post" role="form" style="display: none;">
                                        <div class="form-group">
                                            <input type="text" name="identificacion" id="identificacion" tabindex="1" class="form-control" placeholder="Identificacion" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="nombre" id="nombre" tabindex="1" class="form-control" placeholder="Nombre" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="apellido" id="nombre" tabindex="1" class="form-control" placeholder="Apellido" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Usuario" value="">
                                        </div>

                                        <div class="form-group">
                                            <label for="img"> Avatar</label>
                                            <select class="my-select" name="img" id="ing">
                                                <option  value="images/icons/1.png">Masculino</option>
                                                <option  value="images/icons/2.png">Femenino</option>
                                                <option  value="images/icons/3.png">Anonimo</option>

                                            </select>
                                        </div>

                                        <div class="form-group">
                                            <input type="password" name="contrasena" id="password" tabindex="2" class="form-control" placeholder="Contraseña">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="contrasenaa" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirmar contraseña">
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="accion" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrarse">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </<body>

</html>


