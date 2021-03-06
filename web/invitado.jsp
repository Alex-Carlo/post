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
                            <button class="btn btn-primary has-icon btn-block" type="button" data-toggle="modal" data-target="#threadModal" disabled="true">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus mr-2">
                                <line x1="12" y1="5" x2="12" y2="19"></line>
                                <line x1="5" y1="12" x2="19" y2="12"></line>
                                </svg>
                                Nuevo Post
                            </button>
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
                                                        <a href="index.jsp" class="nav-link nav-link-faded has-icon active">Inicio</a>
                                                        <a href="Controlador?accion=invitado" class="nav-link nav-link-faded has-icon">Posts</a>
                                                        <a href="login.jsp" class="nav-link nav-link-faded has-icon">Entrar</a>
                                                        
                                                        
                                                       
                                                        
                                                        

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
                                <label>No registrado</label>
                                
                                <img src="images/icons/1.png" class="mr-3 rounded-circle" width="50" alt=""/>
                                 
                            </span>
                        </div>
                        <!-- /Inner main header -->

                        <!-- Inner main body -->

                        <!-- Forum List -->




                        <div class="inner-main-body p-2 p-sm-3 collapse forum-content show">

                            <!--  -->
                            <c:forEach var="post" items="${posts}">
                                <div class="card mb-2">
                                    <div class="card-body p-2 p-sm-3">
                                        <div class="media forum-item">
                                            <a href="#" data-toggle="collapse" data-target=".forum-content"><img src="${post.getImg()}" class="mr-3 rounded-circle" width="50" alt="User" /></a>
                                            <div class="media-body">
                                                <h6><a href="" data-toggle="collapse" data-target=".forum-content" class="text-body">${post.getTema()}</a></h6>
                                                <p class="text-secondary">
                                                    ${post.getContenido()}
                                                </p>
                                                <p class="text-muted"><a href="javascript:void(0)">${post.getUsername()}</a> publicado <span class="text-secondary font-weight-bold">${post.getFecha()}</span></p>
                                            </div>
                                            <div class="text-muted small text-center align-self-center">
                                                

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>




                            
                        </div>
                        <!-- /Forum List -->

                        <!-- Forum Detail -->
                        <div class="inner-main-body p-2 p-sm-3 collapse forum-content">
                            <a href="#" class="btn btn-light btn-sm mb-3 has-icon" data-toggle="collapse" data-target=".forum-content"><i class="fa fa-arrow-left mr-2"></i>Back</a>
                            <div class="card mb-2">
                                <div class="card-body">
                                    <div class="media forum-item">
                                        <a href="javascript:void(0)" class="card-link">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="rounded-circle" width="50" alt="User" />
                                            <small class="d-block text-center text-muted">Newbie</small>
                                        </a>
                                        <div class="media-body ml-3">
                                            <a href="javascript:void(0)" class="text-secondary">Mokrani</a>
                                            <small class="text-muted ml-2">1 hour ago</small>
                                            <h5 class="mt-1">Realtime fetching data</h5>
                                            <div class="mt-3 font-size-sm">
                                                <p>Hellooo :)</p>
                                                <p>
                                                    I'm newbie with laravel and i want to fetch data from database in realtime for my dashboard anaytics and i found a solution with ajax but it dosen't work if any one have a simple solution it will be
                                                    helpful
                                                </p>
                                                <p>Thank</p>
                                            </div>
                                        </div>
                                        <div class="text-muted small text-center">
                                            <span class="d-none d-sm-inline-block"><i class="far fa-eye"></i> 19</span>
                                            <span><i class="far fa-comment ml-2"></i> 3</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-2">
                                <div class="card-body">
                                    <div class="media forum-item">
                                        <a href="javascript:void(0)" class="card-link">
                                            <img src="https://bootdey.com/img/Content/avatar/avatar2.png" class="rounded-circle" width="50" alt="User" />
                                            <small class="d-block text-center text-muted">Pro</small>
                                        </a>
                                        <div class="media-body ml-3">
                                            <a href="javascript:void(0)" class="text-secondary">drewdan</a>
                                            <small class="text-muted ml-2">1 hour ago</small>
                                            <div class="mt-3 font-size-sm">
                                                <p>What exactly doesn't work with your ajax calls?</p>
                                                <p>Also, WebSockets are a great solution for realtime data on a dashboard. Laravel offers this out of the box using broadcasting</p>
                                            </div>
                                            <button class="btn btn-xs text-muted has-icon"><i class="fa fa-heart" aria-hidden="true"></i>1</button>
                                            <a href="javascript:void(0)" class="text-muted small">Reply</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Forum Detail -->

                        <!-- /Inner main body -->
                    </div>
                    <!-- /Inner main -->
                </div>

                <!-- New Thread Modal -->
                <div class="modal fade" id="threadModal" tabindex="-1" role="dialog" aria-labelledby="threadModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <form action="Controlador?accion=addpost" method="post">
                                <div class="modal-header d-flex align-items-center bg-primary text-white">
                                    <h6 class="modal-title mb-0" id="threadModalLabel">Nuevo Post</h6>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">??</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">

                                        <input type="hidden" class="form-control" id="idusuario" name="txtusuario" readonly value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario">Username</label>
                                        <input type="text" class="form-control" id="usuario" name="txtusername" readonly value="" />
                                    </div>
                                    <div class="form-group">
                                        <label for="fecha">Fecha</label>
                                        <input type="date" class="form-control" id="fecha" name="txtfecha" readonly value="<%= LocalDate.now()%>"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="tema">Tema</label>
                                        <input type="text" class="form-control" id="tema" name="txttema" placeholder="Tema" autofocus="" />
                                    </div>



                                    <textarea class="form-control summernote" name="txtcontenido" rows="10" cols="50" placeholder="Escribe tu post aqui..."></textarea>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-light" data-dismiss="modal">Cancelar</button>
                                    <input type="submit" name="post" value="Post">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                                    
                                    
                   
                               
                        </div>
                    </div>
                </div>                 
                                
            </div>
        </div>

        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>
