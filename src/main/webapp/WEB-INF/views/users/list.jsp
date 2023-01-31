<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" />
      <link href="css/style.css" type="text/css" rel="stylesheet" />
      <link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
    </head>
    <header>
      <body>
        <%@ include file="../public/header.jsp" %>
          <center>
            <h2>
                <a href="/users?param=add">Ajout d'utilisateur</a><br>
            </h2>

            <h5>
                <a href="/logout" style="color:red">Se deconnecter</a>
            </h5>
          </center>
          <center>
            <div class="container col-sm-6 col-sm-offset-3 ">
              <div class="panel panel-dark">
                <div class="panel-heading">
                  <h2>Liste des utilisateurs
                </div>
                <table class="table table-stripe" align="center">
                  <tr class="text-center">
                    <th>Id</th>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>Actions</th>
                  </tr>
                  <c:forEach var="user" items="${listUser}">
                  <tr class="text-center">
                      <td>
                        <c:out value="${user.id}" />
                      </td>
                      <td>
                        <c:out value="${user.firsName}" />
                      </td>
                      <td>
                        <c:out value="${user.lastName}" />
                      </td>
                      <td>
                        <c:out value="${user.email}" />
                      </td>
                      <td>
                        <a class="btn btn-primary" data-toggle="modal" data-target="#myModalupdate">Edit</a>
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
                              Voulez-vous supprimer
                              <b class="font-weight-bold">
                                <c:out value="${user.firsName}" />
                              </b>
                              <b class="font-weight-bold">
                                <c:out value="${user.lastName}" />
                              </b>
                              &nbsp;&nbsp;&nbsp;
                              <button type="button" class="btn btn-primary" data-dismiss="modal">Non</button>
                              <a class="btn btn-success"
                                href="/users?param=delete&id=<c:out value='${user.id}'/>">Oui</a>
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Modal -->
                    <!-- Modal pour update-->
                    <div class="modal fade" id="myModalupdate" role="dialog">
                      <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-body">
                            <!-- form-->
                            <div class="panel panel-primary">
                              <div class="panel-heading">modifier un utilisateur </div>
                              <div class="panel-body">
                                <form method="post" action='update' autocomplete="off" style="font-family:Roboto;">
                                  <div class="row">
                                    <div class="" align="left">
                                      <div class="form-group">
                                        <label for="uname">firstname:</label><input type="text" class="form-control" id="username" placeholder="User Name" name="firstname" value=<c:out value="${user.firsName}"/> required>
                                      </div>
                                      <div class="form-group">
                                        <label for="uname">lastname:</label><input type="text" class="form-control" id="lastname" placeholder="lastname" name="lastname" value=<c:out value="${user.lastName}"/> required>
                                      </div>
                                      <div class="form-group">
                                        <label for="uname">email:</label><input type="text" class="form-control" id="email" placeholder="email" name="email" value=<c:out value="${user.email}"/> required>
                                      </div>
                                      <div class="form-group">
                                        <label for="uname">role:</label>
                                        <select class="form-control" name="role">
                                          <c:forEach var="item" items="${listRole}">
                                            <option>
                                              <c:out value="${item.name}" />
                                            </option>
                                          </c:forEach>
                                        </select>
                                      </div>
                                      <div class="form-group">
                                        <label for="uname">Password:</label> <input type="password" class="form-control" id="password" placeholder="Password" name="password" value=<c:out value="${user.password}"/>  required>
                                      </div>
                                      <div class="modal-footer" align="center">
                                        &nbsp;&nbsp;&nbsp;
                                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Non</button>
                                        <a class="btn btn-success btn-sm" type='submit' href="/update?param=update&id=<c:out value='${user.id}'/>">Enregister</a>
                                      </div>
                                    </div>
                                  </div>
                                </form>
                              </div>
                            </div>
                          </div>
                        <!-- end form  -->
               </c:forEach>
              </table>
            </div>
            </div>
            </div>
          </center>
      </body>

    </html>