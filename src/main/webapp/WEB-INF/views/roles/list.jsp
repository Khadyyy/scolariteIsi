<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<header>
<body>
<%@ include file="../public/header.jsp"%>
<center>
  <h1>Gestion des rôles</h1>
  <table class="table table-stripe">
  <tr class="text-center">
  	<td><a href="/roles?param=add" class="btn btn-success">Ajout role</a><br></td>
  	<td><a href="/logout" class="btn btn-danger">Se deconnecter</a></td>
  </tr>
 </table>
 </center>
<div class="container col-md-8 col-md-offset-1">
<c:if test="${!empty erorr}">
   <c:out value="${error}"/>
</c:if>
    <div class="panel panel-dark">
      <div class="panel-heading"><h2>Liste des roles</h2></div>
        <div class="panel-body" align="center">
         <table class="table table-stripe">
			 <tr class="text-center">
				<th>ID</th>
				<th>ROLE</th>
				<th>Actions</th>
			 </tr>
			    <c:forEach var="role" items="${listRole}">
				<tr class="text-center">
				<td><c:out value="${role.id}" /></td>
				<td><c:out value="${role.name}" /></td>
				<td>
                   <a class="btn btn-primary" href="edit?id=<c:out value='${role.id}' />">Edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                   <a class="btn btn-danger" data-toggle="modal" data-target="#myModaldelete">Delete</a>
                </td>
			</tr>
				<!-- Modal pour suprimer-->
                                    <div class="modal fade" id="myModaldelete" role="dialog">
                                      <div class="modal-dialog">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                          <div class="modal-footer">
                                            <p class="alert alert-danger alert-dismissible fade in">
                                              Voulez-vous supprimer le :
                                              <b class="font-weight-bold">
                                                <c:out value="${role.name}" />
                                              </b>
                                              &nbsp;&nbsp;&nbsp;
                                              <button type="button" class="btn btn-dark" data-dismiss="modal">Non</button>
                                              <a class="btn btn-success"
                                                href="/roles?param=delete&id=<c:out value='${role.id}'/>">Oui</a>
                                            </p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                <!-- Modal -->
				</c:forEach>
         </table>
        </div>
    </div>
</div>
</body>
</html>