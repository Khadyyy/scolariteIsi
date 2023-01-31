<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>

    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
      <%@ include file="../public/header.jsp" %>
        <div class="container">
        <div class="row">
          <div class="col-6 col-md-3"><a href="/roles" class="btn btn-primary">Liste roles</a></div>
          <div class="col-6 col-md-6">
          <div class="panel panel-primary">
            <div class="panel-heading">Ajouter un users</div>
            <div class="panel-body">
              <div align="center">
                <form method="post" action="users" autocomplete="off" style="font-family:Roboto;">
                  <div class="row">
                    <div class="" align="left">
                      <div class="form-group">
                        <label for="uname">firstname:</label><input type="text" class="form-control" id="username"
                          placeholder="User Name" name="firstname" required>
                      </div>
                      <div class="form-group">
                        <label for="uname">lastname:</label><input type="text" class="form-control" id="lastname"
                          placeholder="lastname" name="lastname" required>
                      </div>
                      <div class="form-group">
                        <label for="uname">email:</label><input type="text" class="form-control" id="email" placeholder="email"
                          name="email" required>
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
                        <label for="uname">Password:</label> <input type="password" class="form-control" id="password"
                          placeholder="Password" name="password" required>
                      </div>
                      <div class="modal-footer" align="center">
                        &nbsp;&nbsp;&nbsp;
                        <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Non</button>
                        <input class="btn btn-success" type='submit' name='submit'/>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          </div>
          <div class="col-6 col-md-3"></div>
        </div>
        </div>
    </body>
    </html>
