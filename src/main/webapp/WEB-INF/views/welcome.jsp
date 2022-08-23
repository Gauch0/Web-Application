<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
    <link href="${contextPath}/resources/css/profile.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<div class="mainbody container-fluid">
    <div class="row">
        <div class="navbar-wrapper">
            <div class="container-fluid">
                <div class="navbar navbar-custom navbar-static-top" role="navigation">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                    class="icon-bar"></span><span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#" style="margin-right:-8px; margin-top:-5px;">
                                <img alt="Brand" src="${contextPath}/resources/Images/user/logo.png" width="30px" height="30px">
                            </a>
                            <a class="navbar-brand" href="#">VisualPath</a>
                            <i class="brand_network"><small><small>VP* Network</small></small></i>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="./ORqmj">Stream</a></li>
                                <li><a href="#">My Actividad</a></li>
                                <li><span class="badge badge-important">2</span><a href="#"><i class="fa fa-bell-o fa-lg" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-envelope-o fa-lg" aria-hidden="true"></i></a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <span class="user-avatar pull-left" style="margin-right:8px; margin-top:-5px;">
                                    <img src="${contextPath}/resources/Images/user/user.png" class="img-responsive img-circle" title="John Doe" alt="John Doe" width="30px" height="30px">
                                    </span>
                                    <span class="user-name">
                                        ${pageContext.request.userPrincipal.name}
                                    </span>
                                    <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <div class="navbar-content">
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <img src="${contextPath}/resources/Images/user/user.png" alt="Alternate Text" class="img-responsive" width="120px" height="120px" />
                                                        <p class="text-center small">
                                                            <a href="${contextPath}/upload">Change Photo</a></p>
                                                    </div>
                                                    <div class="col-md-7">
                                                        <span> ${pageContext.request.userPrincipal.name}</span> <br/>
                                                        <p class="text-muted small">
                                                            ${pageContext.request.userPrincipal.name}@visualpath.co.in</p>
                                                        <div class="divider">
                                                        </div>
                                                        <a href="${contextPath}/user/${pageContext.request.userPrincipal.name}" class="btn btn-default btn-xs"><i class="fa fa-user-o" aria-hidden="true"></i> UpdateProfile </a>
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-address-card-o" aria-hidden="true"></i> Contacto</a>
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-cogs" aria-hidden="true"></i> Configuracion</a>
                                                        <a href="#" class="btn btn-default btn-xs"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Ayuda!</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="navbar-footer">
                                                <div class="navbar-footer-content">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <a href="#" class="btn btn-default btn-sm"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Cambiar contraseña</a>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <a onclick="document.forms['logoutForm'].submit()" class="btn btn-default btn-sm pull-right"><i class="fa fa-power-off" aria-hidden="true"></i>Desconectarse</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top:50px;">.</div>
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="media">
                        <div align="center">
                            <img class="thumbnail img-responsive" src="${contextPath}/resources/Images/user/user.png" width="300px" height="300px">
                        </div>
                        <div class="media-body">
                            <hr>
                            <h3><strong>Biografia</strong></h3>
                            <p>Leonardo Guillermo Mattioli, más conocido como Leo Mattioli, "el león santafesino", fue un cantante de cumbia y compositor argentino. Uno de los máximos exponentes del Romanticismo. Con una carrera repleta de éxitos</p>
                            <hr>
                            <h3><strong>Locacion</strong></h3>
                            <p>Argentina</p>
                            <hr>
                            <h3><strong>Genero</strong></h3>
                            <p>Masculino</p>
                            <hr>
                            <h3><strong>Birthday</strong></h3>
                            <p>13 de agosto de 1972 </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <span>
                        <h1 class="panel-title pull-left" style="font-size:30px;">${pageContext.request.userPrincipal.name} &nbsp; <small>${pageContext.request.userPrincipal.name}@visualpath.co.in</small> <i class="fa fa-check text-success" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title=" sharing with you"></i></h1>
                        <div class="dropdown pull-right">
						
                            <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                Friends
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="#">Famillia</a></li>
                                <li><a href="#"><i class="fa fa-fw fa-check" aria-hidden="true"></i> Amigos</a></li>
                                <li><a href="#">Trabajo</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#"><i class="fa fa-fw fa-plus" aria-hidden="true"></i> Agregar nuevo aspecto</a></li>
                            </ul>
                        </div>
                    </span>
                    <br><br>
                    <i class="fa fa-tags" aria-hidden="true"></i> <a href="#" class="tag">#DevOps</a> <a href="#" class="tag"> #Continuous Integration</a> <a href="#" class="tag"> #Continuous Delivery </a><a href="#" class="tag"> #Automation</a>
                     <c:if test="${pageContext.request.userPrincipal.name =='admin_vp'}">
					     <a href="${contextPath}/users" class="btn btn-success" >All Users</a>
					 </c:if>
					  <c:if test="${pageContext.request.userPrincipal.name =='admin_vp'}">
					     <a href="${contextPath}/user/rabbit" class="btn btn-success" >RabbitMq</a>
					 </c:if>
					 <c:if test="${pageContext.request.userPrincipal.name =='admin_vp'}">
					     <a href="${contextPath}/user/elasticsearch" class="btn btn-success" >Elasticsearch</a>
					 </c:if>
                    <br><br><hr>
                    <span class="pull-left">
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-fw fa-files-o" aria-hidden="true"></i> Posts</a>
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-fw fa-picture-o" aria-hidden="true"></i> Fotos <span class="badge">42</span></a>
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-fw fa-users" aria-hidden="true"></i> Contactos <span class="badge">42</span></a>
                    </span>
                    <span class="pull-right">
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-lg fa-at" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="Mention"></i></a>
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-lg fa-envelope-o" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="Message"></i></a>
                        <a href="#" class="btn btn-link" style="text-decoration:none;"><i class="fa fa-lg fa-ban" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="Ignore"></i></a>
                    </span>
                </div>
            </div>
            <hr>
            <!-- Simple post content example. -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="#">
                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                        </a>
                    </div>
                    <h4><a href="#" style="text-decoration:none;"><strong>${pageContext.request.userPrincipal.name}</strong></a><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 42 minutes ago</i></a></small></small></h4>
                    <span>
                        <div class="navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-link btn-xs dropdown-toggle" type="button" id="dd1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dd1" style="float: right;">
                                    <li><a href="#"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Reportar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-ban" aria-hidden="true"></i> Ignorar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-bell" aria-hidden="true"></i> Enable notifications for this post</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-eye-slash" aria-hidden="true"></i> Ocultar</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#"><i class="fa fa-fw fa-trash" aria-hidden="true"></i> Eliminar</a></li>
                                </ul>
                            </div>
                        </div>
                    </span>
                    <hr>
                    <div class="post-content">
                        <p>"Sin música, la vida sería un error"</p>
                        <p>La música expresa lo que no puede ser dicho y aquello sobre lo que es imposible permanecer en silencio</p>
                    </div>
                    <hr>
                    <div>
                        <div class="pull-right btn-group-xs">
                            <a class="btn btn-default btn-xs"><i class="fa fa-heart" aria-hidden="true"></i> Like</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-retweet" aria-hidden="true"></i> Compartir</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-comment" aria-hidden="true"></i> Commentar</a>
                        </div>
                        <div class="pull-left">
                            <p class="text-muted" style="margin-left:5px;"><i class="fa fa-globe" aria-hidden="true"></i> Public</p>
                        </div>
                        <br>
                    </div>
                    <hr>
                    <div class="media">
                        <div class="pull-left">
                            <a href="#">
                                <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="35px" height="35px" style="margin-left:3px; margin-right:-5px;">
                            </a>
                        </div>
                        <div class="media-body">
                            <textarea class="form-control" rows="1" placeholder="Comment"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Reshare Example -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="#">
                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                        </a>
                    </div>
                    <h4><a href="#" style="text-decoration:none;"><strong>${pageContext.request.userPrincipal.name}</strong></a><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 42 minutes ago</i></a></small></small></h4>
                    <span>
                        <div class="navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-link btn-xs dropdown-toggle" type="button" id="dd1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dd1" style="float: right;">
                                    <li><a href="#"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Reportar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-ban" aria-hidden="true"></i> Ignorar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-bell" aria-hidden="true"></i> Activar notificationes</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-eye-slash" aria-hidden="true"></i> Ocultar</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#"><i class="fa fa-fw fa-trash" aria-hidden="true"></i> Eliminar</a></li>
                                </ul>
                            </div>
                        </div>
                    </span>
                    <hr>
                    <div class="post-content">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="pull-left">
                                    <a href="#">
                                        <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user2.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                                    </a>
                                </div>
                                <h4><a href="#" style="text-decoration:none;"><strong>Luis miguel</strong></a> <small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> about 10 hours ago</i></a></small></small></h4>
                                <hr>
                                <div class="post-content">
                                     <p>En la vida hay amores que nunca pueden olvidarse.</p>
                                    <p>El mejor momento de mi vida fue cuando sentí estar enamorado por primera vez.</p>
                                    <p>Te recuerdo así, tu pelo en libertad y en lo ardiente, diferente a las demás.</p>
									<p>Prefiero el idioma español porque tiene muchas formas de decir te quiero.</p>                                
                                    <p>Nos juramos lealtad sin testigos.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div>
                        <div class="pull-right btn-group-xs">
                            <a class="btn btn-default btn-xs"><i class="fa fa-heart" aria-hidden="true"></i> Me gusta</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-retweet" aria-hidden="true"></i> Compartir</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-comment" aria-hidden="true"></i> Comentar</a>
                        </div>
                        <div class="pull-left">
                            <p class="text-muted" style="margin-left:5px;"><i class="fa fa-globe" aria-hidden="true"></i> Publicar</p>
                        </div>
                        <br>
                    </div>
                    <hr>
                    <div class="media">
                        <div class="pull-left">
                            <a href="#">
                                <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="35px" height="35px" style="margin-left:3px; margin-right:-5px;">
                            </a>
                        </div>
                        <div class="media-body">
                            <textarea class="form-control" rows="1" placeholder="Comment"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sample post content with picture. -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="#">
                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                        </a>
                    </div>
                    <h4><a href="#" style="text-decoration:none;"><strong>${pageContext.request.userPrincipal.name}</strong></a><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 42 minutes ago</i></a></small></small></h4>
                    <span>
                        <div class="navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-link btn-xs dropdown-toggle" type="button" id="dd1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dd1" style="float: right;">
                                    <li><a href="#"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Reportar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-ban" aria-hidden="true"></i> Ignorar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-bell" aria-hidden="true"></i> Activar notificationes</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-eye-slash" aria-hidden="true"></i> Ocultar</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#"><i class="fa fa-fw fa-trash" aria-hidden="true"></i> Eliminar</a></li>
                                </ul>
                            </div>
                        </div>
                    </span>
                    <hr>
                    <div class="post-content">
                        <p>" Tus palabras son caricias a mi corazón, Marcela. "</p>
                        <img class="img-responsive" src="${contextPath}/resources/Images/user/giphy.gif">
                        <p><br><a href="#" class="tag">#  No pretendo ser tu dueño, no soy nada. Ya no tengo vanidad. </a> <a href="#" class="tag">Quiero llevar toda la pasión hacia la eternidad.</a></p>
                    </div>
                    <hr>
                    <div>
                        <div class="pull-right btn-group-xs">
                            <a class="btn btn-default btn-xs"><i class="fa fa-heart" aria-hidden="true"></i>Me gusta</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-retweet" aria-hidden="true"></i>Compartir</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-comment" aria-hidden="true"></i> Comentar</a>
                        </div>
                        <div class="pull-left">
                            <p class="text-muted" style="margin-left:5px;"><i class="fa fa-globe" aria-hidden="true"></i> Publicado <strong>via iphone</strong></p>
                        </div>
                        <br>
                    </div>
                    <hr>
                    <div class="media">
                        <div class="pull-left">
                            <a href="#">
                                <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="35px" height="35px" style="margin-left:3px; margin-right:-5px;">
                            </a>
                        </div>
                        <div class="media-body">
                            <textarea class="form-control" rows="1" placeholder="Comment"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sample post content with comments. -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="#">
                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="50px" height="50px" style="margin-right:8px; margin-top:-5px;">
                        </a>
                    </div>
                    <h4><a href="#" style="text-decoration:none;"><strong>${pageContext.request.userPrincipal.name}</strong></a> <small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 42 minutes ago</i></a></small></small></h4>
                    <span>
                        <div class="navbar-right">
                            <div class="dropdown">
                                <button class="btn btn-link btn-xs dropdown-toggle" type="button" id="dd1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="fa fa-cog" aria-hidden="true"></i>
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dd1" style="float: right;">
                                    <li><a href="#"><i class="fa fa-fw fa-exclamation-triangle" aria-hidden="true"></i> Reportar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-ban" aria-hidden="true"></i>Ignorar</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-bell" aria-hidden="true"></i>Activar notificationes</a></li>
                                    <li><a href="#"><i class="fa fa-fw fa-eye-slash" aria-hidden="true"></i> Ocultar</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#"><i class="fa fa-fw fa-trash" aria-hidden="true"></i>Eliminar</a></li>
                                </ul>
                            </div>
                        </div>
                    </span>
                    <hr>
                    <div class="post-content">
                        <p>"Ahora te podes marchar."</p>
                    </div>
                    <hr>
                    <div>
                        <div class="pull-right btn-group-xs">
                            <a class="btn btn-default btn-xs"><i class="fa fa-heart" aria-hidden="true"></i>Me gusta</a>
                            <a class="btn btn-default btn-xs"><i class="fa fa-comment" aria-hidden="true"></i> Comentar</a>
                        </div>
                        <div class="pull-left">
                            <p class="text-muted" style="margin-left:5px;"><i class="fa fa-user-secret" aria-hidden="true"></i> Limitado</p>
                        </div>
                        <br>
                    </div>
                    <hr>
                    <div>
                        <a class="btn btn-default btn-xs"><i class="fa fa-bars" aria-hidden="true"></i>Mostrar 12 comentarios mas</a>
                        <hr>
                        <div class="post-content">
                            <div class="panel-default">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <a href="#">
                                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user2.png" width="35px" height="35px" style="margin-right:8px; margin-top:-5px;">
                                        </a>
                                    </div>
                                    <h4><a href="#" style="text-decoration:none;"><strong>Luis miguel</strong></a></h4>
                                    <hr>
                                    <div class="post-content">
                                        <p>Ya va llegando el mariachi cantando con sus guitarras y guitarrones pa’ que se alegren y retocen los corazones.</p>
                                        <br><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 12 minutes ago</i></a></small></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="post-content">
                            <div class="panel-default">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <a href="#">
                                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user3.png" width="35px" height="35px" style="margin-right:8px; margin-top:-5px;">
                                        </a>
                                    </div>
                                    <h4><a href="#" style="text-decoration:none;"><strong>Menem</strong></a></h4>
                                    <hr>
                                    <div class="post-content">
                                        <p>No hay nada noble es ser superior a tu prójimo; la verdadera nobleza es ser superior a tu yo interior.
                                            Aguante el 1 a 1
                                        </p>
                                        <br><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 9 minutes ago</i></a></small></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="post-content">
                            <div class="panel-default">
                                <div class="panel-body">
                                    <div class="pull-left">
                                        <a href="#">
                                            <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="35px" height="35px" style="margin-right:8px; margin-top:-5px;">
                                        </a>
                                    </div>
                                    <h4><a href="#" style="text-decoration:none;"><strong>${pageContext.request.userPrincipal.name}</strong></a></h4>
                                    <hr>
                                    <div class="post-content">
                                        <p>Tengo información que podría llevar al arresto de Cristina Fernández de Kirchner.</p>
                                        <br><small><small><a href="#" style="text-decoration:none; color:grey;"><i><i class="fa fa-clock-o" aria-hidden="true"></i> 2 minutes ago</i></a></small></small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="media">
                        <div class="pull-left">
                            <a href="#">
                                <img class="media-object img-circle" src="${contextPath}/resources/Images/user/user.png" width="35px" height="35px" style="margin-left:3px; margin-right:-5px;">
                            </a>
                        </div>
                        <div class="media-body">
                            <textarea class="form-control" rows="1" placeholder="Comment"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
    </c:if>
</div>
<script type="text/javascript">
$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
	$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
