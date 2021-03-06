<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <style>
   </style>
   <head>
      <meta charset="utf-8">
      <link rel="icon" href="images/employeetab.png" type="image/gif" sizes="16x16">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel="stylesheet" type="text/css" href="format.css"/>
   </head>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="ProjectController" />
      </jsp:include>
      <center> All Projects Information </center>
      <form  action = "ProjectController" method ="post">
         <div>
            <input type="text" style = "width:50%;" placeholder="Enter your file name and file will be located in files folder" name="name" title="Enter a valid name">
            <input type=hidden name = status value= ${status}>
            <input class = "submit" style = "width:10%; "  type="submit"  name = "choice" value = "CreateFile"/>
            <c:choose>
               <c:when test = "${isFilePresent == true}">
                  <a href="${file}" download>
                  <img src="images/file.png">
                  <img src="images/pointer.gif" title ="download file">
                  </a> 
               </c:when>
            </c:choose>
         </div>
      </form>
      <table id="employee">
         <thead>
            <tr>
               <th>Id</th>
               <th>Name</th>
               <th>Description</th>
               <th>StartDate</th>
               <th>status</th>
               <th>Action</th>
            </tr>
         </thead>
         <tbody type="submit"   name = "choice" value = "view">
            <c:forEach items= "${projects}" var = "project">
               <tr>
                  <td>${project.id}</td>
                  <td>${project.name}</td>
                  <td>${project.description}</td>
                  <td>${project.startDate}</td>
                  <td>${project.status}</td>
                  <td>
                     <c:choose>
                        <c:when test = "${project.status == 'active'}">
                           <input type = "button"  class ="pop" value = "action"title = "action" data-html="true" data-toggle="popover" data-content="
                              <form  id = myform3 action = ProjectController method =post>   
                              <input type=hidden name = id value= ${project.id}>
                              <input type=hidden name=choice value= Delete>
                              <a onclick=document.getElementById('myform3').submit();> <img src = images/d /></a>
                              </form>
                              <form  id = myform4 action = ProjectController method =post>
                              <input type=hidden name = id value= ${project.id}>
                              <input type=hidden name = status value= ${project.status}>
                              <input type=hidden name=choice value= Search>
                              <a onclick=document.getElementById('myform4').submit();> <img src = images/edit.png /></a>
                              </form>
                              </input>
                              "></input>
                        </c:when>
                        <c:when test = "${project.status == 'inactive'}">
                           <input type = "button"  class ="pop" value = "action"title = "action" data-html="true" data-toggle="popover" data-content="
                              <form  id = myform1 action = ProjectController method =post>   
                              <input type=hidden name = id value= ${project.id}>
                              <input type=hidden name=choice value= Restore>
                              <a onclick=document.getElementById('myform1').submit();> <img src = images/restore.png /></a>
                              </form>
                              <form  id = myform2 action = ProjectController method =post>
                              <input type=hidden name = id value= ${project.id}>
                              <input type=hidden name = status value= ${project.status}>
                              <input type=hidden name=choice value= Search>
                              <a onclick=document.getElementById('myform2').submit();> <img src = images/view.png /></a>
                              </form>
                              </input>
                              "></input>
                           </input>
                        </c:when>
                     </c:choose>
                  </td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
      <c:choose>
         <c:when test = "${Deletedid != null }">
            <script>
               alert("${Deletedid} is successfully deleted");
            </script>
         </c:when>
      </c:choose>
      <c:choose>
         <c:when test = "${restoredId!= null}">
            <script>
               alert("${restoredId} is successfully restored");
            </script>
         </c:when>
         <c:when test = "${updatedId != null }">
            <script>
               alert("${updatedId} is successfully  updated");
            </script>
         </c:when>
      </c:choose>
      <%@ include file="js/Common.js" %>
      <%@ include file="footer.html" %>
   </body>
</html>
