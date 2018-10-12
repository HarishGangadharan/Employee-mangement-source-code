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
    
      <link rel="stylesheet" type="text/css" href="format.css"/>
   </head>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="ClientController" />
      </jsp:include>
      <center> Client Information </center>
      <div></div>
      </form>
      <form id = "myform3" action = "ClientController" method ="post">
         <table id="project">
            <thead>
               <tr>
                  <th>Id</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Requirements</th>
                  <th>Mobile number</th>
                  <th>Status</th>
               </tr>
            </thead>
            <tr>
               <td>${client.id}</td>
               <td>${client.name}</td>
               <td>${client.mailId}</td>
               <td>${client.requirements}</td>
               <td>${client.mobileNumber}</td>
               <td>${client.status}</td>
            </tr>
         </table>
         <table id="employee">
            <thead>
               <tr>
                  <th>
                  </th>
                  <th>Id</th>
                  <th>Name</th>
                  <th>Description</th>
                  <th>Status</th>
                  <c:choose>
                     <c:when test = "${projectMembers == 'projectMembers'}">
                        <th>Operation</th>
                     </c:when>
                  </c:choose>
               </tr>
            </thead>
            <c:forEach items= "${projects}" var = "project">
               <tr>
                  <td>
                     <div id="checkboxlist">
                     <input type="checkbox" name = "checkbox" value = ${project.id} /> 
                  </td>
                  <td>${project.id}</td>
                  <td>${project.name}</td>
                  <td>${project.description}</td>
                  <td>${project.status}</td>
                  <c:choose>
                     <c:when test = "${projectMembers == 'projectMembers'}">
                        <td>
      <form  id = myform1 action = ClientController method =post>   
      <input type=hidden name = projectId value= ${project.id}>
      <input type=hidden name = clientId value= "${client.id}">
      <input type=hidden name=choice value= RemoveProject>
      <input  type="submit"  name = "choice"  onclick = "return confirm( 'Do you want to delete the project ?');"  value = "Delete"/>
      </form>
      </td>
      </c:when>
      </c:choose>
      </tr>
      </c:forEach>
      </table>
      <c:choose>
         <c:when test = "${projectMembers != 'projectMembers'}">
            <input type=hidden name = clientId value= "${client.id}">
            <input class = "addEmployee" type="submit"  name = "choice" value = "Assign"/>
         </c:when>
         <c:when test = "${projectMembers == 'projectMembers'}">
            <table>
               <tr>
                  <th>
                     <form  id = myform1 action = ClientController method =post>   
                        <input type=hidden name = clientId value= "${client.id}">
                        <input class = "addProject" type="submit"  name = "choice" value = "AddProjects"/>
                     </form>
                  </th>
                  <th>
                     <form  id = myform1 action = ClientController method =post>   
                        <input type=hidden name = id value= "${client.id}">
                        <input class = "addProject" type="submit"  name = "choice" value = "UpdateClient"/>
                     </form>
                  </th>
               </tr>
            </table>
         </c:when>
      </c:choose>
      </form>
   </body>
 <c:choose>
         <c:when test = "${response != null }">
            <script>
               alert("${response}");
            </script>
         </c:when>
      </c:choose>
</html>
