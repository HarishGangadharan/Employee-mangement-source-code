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
      <center> Project Information </center>
      <div></div>
      </form>

      <form id = "myform3" action = "ProjectController" method ="post">

         <table id="project">
            <thead>
               <tr>
                  <th>Id</th>
                  <th>Name</th>
                  <th>Description</th>
                  <th>StartDate</th>
                  <th>Client</th>
                  <th>Status</th>
               </tr>
            </thead>
            <tr>
               <td>${project.id}</td>
               <td>${project.name}</td>
               <td>${project.description}</td>
               <td><%=request.getAttribute("startDate")%></td>
               <td>
                  <a href="#">${project.clientId}</a>
      </form>
      </td>
      <td>${project.status}</td>
      </tr>
      </table>
 <input type=hidden name = id value= "${project.id}">
                        <input type=hidden name = status value= "${project.status}">
      <input class = "viewHistory" type="submit"  name = "choice" value = "History"/>


 <c:choose>
                  <c:when test = "${histories == 'histories'}">
      <center> Project History Details </center>
     <table id="employee" >
         <thead>
            <tr>
               <th>projectid</th>
               <th>employeeid</th>
               <th>joining date</th>
               <th>leaving date</th>
            </tr>
         </thead>
         <c:forEach items= "${project.histories}" var = "history">
            <tr>
               </form>
               <td>${history.projectId}</td>
               <td>${history.employeeId}</td>
               <td>${history.empJoiningDate}</td>
               <td>${history.empLeavingDate}</td>
               
 </tr>
         </c:forEach>
      </table>
 </c:when>
               </c:choose>

      <center class = "employeesdetail"> Employees Details </center>
      <table id="employee">
         <thead>
            <tr>
               <c:choose>
                  <c:when test = "${projectMembers != 'projectMembers'}">
                     <th></th>
                  </c:when>
               </c:choose>
               <th>Id</th>
               <th>Name</th>
               <th>Designation</th>
               <th>Email</th>
               <th>Dob</th>
               <th>Mobilenumber</th>
               <th>Status</th>
               <c:choose>
                  <c:when test = "${projectMembers == 'projectMembers'}">
                     <th>Operation</th>
                  </c:when>
               </c:choose>
            </tr>
         </thead>
         <c:forEach items= "${employees}" var = "employee">
            <tr>
               <c:choose>
                  <c:when test = "${projectMembers != 'projectMembers'}">
                     <td>
                        <div id="checkboxlist">
                        <input type="checkbox" name = "checkbox" value = ${employee.id} /> 
                     </td>
                  </c:when>
               </c:choose>
               <td>${employee.id}</td>
               <td>${employee.name}</td>
               <td>${employee.designation}</td>
               <td>${employee.mailId}</td>
               <td>${employee.dob}</td>
               <td>${employee.mobileNumber}</td>
               <td>${employee.status}</td>
               <c:choose>
                  <c:when test = "${projectMembers == 'projectMembers'}">
                     <td>
                        <form  id = myform1 action = ProjectController method =post>   
                           <input type=hidden name = id value= ${employee.id}>
                           <input type=hidden name = projectId value= "${project.id}">
                           <input type=hidden name=choice value= RemoveProjectMember>
                           <input  type="submit"  name = "choice" onclick = "return confirm( 'Do you want to delete the project member ?');" value = "Delete"/>
                        </form>
                     </td>
                  </c:when>
               </c:choose>
            </tr>
         </c:forEach>
      </table>
      <c:choose>
         <c:when test = "${projectMembers != 'projectMembers'}">
            <input type=hidden name = projectId value= "${project.id}">
            <input class = "addEmployee" type="submit"  name = "choice" value = "Assign"/>
         </c:when>
         <c:when test = "${projectMembers == 'projectMembers'}">
            <table>
               <tr>
                  <th>
                     <form  id = myform1 action = ProjectController method =post>   
                        <input type=hidden name = projectId value= "${project.id}">
                        <input class = "addProject" type="submit"  name = "choice" value = "AddEmployee"/>
                     </form>
                  </th>
                  <th>
                     <form  id = myform1 action = ProjectController method =post>   
                        <input type=hidden name = id value= "${project.id}">
                        <input type=hidden name = status value= "${project.status}">
                        <input class = "addProject" type="submit"  name = "choice" value = "UpdateProject"/>
                     </form>
                  </th>
               </tr>
            </table>
         </c:when>
      </c:choose>
      </form>
   </body>
</html>
