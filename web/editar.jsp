<%-- 
    Document   : principal
    Created on : 31/05/2021, 12:44:59 PM
    Author     : ALEX CARLO
--%>


<%@page import="Modelo.Usuario"%>
<%@page import="java.time.LocalDate"%>
<%@page session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!--  This file has been downloaded from bootdey.com    @bootdey on twitter -->
        <!--  All snippets are MIT license http://bootdey.com/license -->
        <title>Post Project</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">

       <link href="css/print.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
        <div class="container">
            <div class="main-body p-0">
                <div class="inner-wrapper">
                    <!-- Inner sidebar -->
                    <div class="inner-sidebar">
                        <!-- Inner sidebar header -->
                        <div class="inner-sidebar-header justify-content-center">

                        </div>
                        <!-- /Inner sidebar header -->

                        <!-- Inner sidebar body -->
                        <div class="inner-sidebar-body p-0">
                            <div class="p-3 h-100" data-simplebar="init">
                                <div class="simplebar-wrapper" style="margin: -16px;">
                                    <div class="simplebar-height-auto-observer-wrapper"><div class="simplebar-height-auto-observer"></div></div>
                                    <div class="simplebar-mask">
                                        <div class="simplebar-offset" style="right: 0px; bottom: 0px;">
                                            <div class="simplebar-content-wrapper" style="height: 100%; overflow: hidden scroll;">
                                                <div class="simplebar-content" style="padding: 16px;">
                                                    <nav class="nav nav-pills nav-gap-y-1 flex-column">
                                                        
                                                        
                                                           

                                                    </nav>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="simplebar-placeholder" style="width: 234px; height: 292px;"></div>
                                </div>
                                <div class="simplebar-track simplebar-horizontal" style="visibility: hidden;"><div class="simplebar-scrollbar" style="width: 0px; display: none;"></div></div>
                                <div class="simplebar-track simplebar-vertical" style="visibility: visible;"><div class="simplebar-scrollbar" style="height: 151px; display: block; transform: translate3d(0px, 0px, 0px);"></div></div>
                            </div>
                        </div>
                        <!-- /Inner sidebar body -->
                    </div>
                    <!-- /Inner sidebar -->

                    <!-- Inner main -->
                    <div class="inner-main">
                        <!-- Inner main header -->
                        <div class="inner-main-header">
                            <a class="nav-link nav-icon rounded-circle nav-link-faded mr-3 d-md-none" href="#" data-toggle="inner-sidebar"><i class="material-icons">arrow_forward_ios</i></a>

                            <span class="input-icon input-icon-sm ml-auto w-auto">

                                
                            </span>
                        </div>
                        <!-- /Inner main header -->

                        <!-- Inner main body -->

                        <!-- Forum List -->
                        



                        <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

                            <!--  -->
                          
                            <div   tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" >
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <form action="Controlador?accion=editarpost" method="post">
                                <div class="modal-header d-flex align-items-center bg-primary text-white">
                                    <h6 class="modal-title mb-0" id="threadModalLabel">Nuevo Post</h6>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">

                                        <input type="hidden" class="form-control" id="idusuario" name="txtidp" readonly value="${aux.getId()}" />
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario">Username</label>
                                        <input type="text" class="form-control" id="usuario" name="txtusername" readonly value="${aux.getUsername()}" />
                                    </div>
                                    <div class="form-group">
                                        <label for="fecha">Fecha</label>
                                        <input type="date" class="form-control" id="fecha" name="txtfecha" readonly value="<%= LocalDate.now()%>"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="tema">Tema</label>
                                        <input type="text" class="form-control" id="tema" name="txttema" placeholder="Tema" autofocus="" value="${aux.getTema()}" />
                                    </div>



                                    <textarea class="form-control summernote" name="txtcontenido" rows="10" cols="50"  value="${aux.getContenido()}"></textarea>

                                </div>
                                <div class="modal-footer">
                                     <a href="Controlador?accion=principal" class="nav-link nav-link-faded has-icon active">Cancelar</a>
                                    <input type="submit" name="post" value="Editar">
                                </div>
                            </form>
                                    
                        </div>
                    </div>
                </div>
            </div>
        </div>
                    <!-- /Inner main -->
                </div>

                <!-- New Thread Modal -->
               

        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>
