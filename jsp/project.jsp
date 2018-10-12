<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" type="text/css" href="format.css"/>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="ProjectController" />
      </jsp:include>
      <center> Project Information </center>
      <form action = "ProjectController" method ="post">
         <table align = 'center'>
            <tr>
               <td align='center'> <img src="images/account.png"/></td>
               <td> <input type="text" placeholder="Project name" name="name" pattern="[A-Za-z]*" title="Enter a valid name" maxlength="10" value = "${project.name}" required ></td>
            </tr>
            <tr>
               <td align='center'>  <img src="images/hello.svg"></td>
               <td>  
                  <input type="text" placeholder="Project description" name="description" title="Enter a valid description" maxlength="10" value = "${project.description}" required>
               </td>
            </tr>
            <tr>
               <td align='center'>  <img src="images/projectDate.png"></td>
               <td>  <input class = "date" type="date" name = "startDate" value =<%=request.getAttribute("startDate")%> required></td>
            </tr>
            <c:choose>
               <c:when test = "${project.name != null}">
                  <tr>
                     <td align='center'>  <img src="images/id.png"></td>
                     <td>  <input type="text" name = "id" value = ${project.id} readonly></td>
               </c:when>
            </c:choose>
         </table>
         <div>
            <c:choose>
               <c:when test = "${project.name == null}">
                  <table>
                     <tr>
                        <th>
                           <input class = "submitButton" type="submit" name = "choice" value = "Submit"/>
                        </th>
                        <th>
                           <input class = "submitButton" type="reset" value="Reset"  onclick = "return  confirm('Do you want to reset this project detail ?');">
                        </th>
                     </tr>
                  </table>
               </c:when>
               <c:when test = "${project.name != null}">
                  <div>
                     <c:if test="${(project.status == 'active')}">
                        <table>
                           <tr>
                              <th>
      <form action = "ProjectController" method ="post">   
      <input class = "employeeButton" id = "update" onclick = "return confirm('Do you want to update this project ?')"  type="submit"  name = "choice" value = "Update"/>
      </form>
      </th>
      <th>
      <form action = "ProjectController" method ="post">   
      <input type=hidden name = id value= ${project.id}>
      <input class = "employeeButton" id = "delete" onclick = "return confirm('Do you want to delete this project ?')"   type="submit"  name = "choice" value = "Delete"/>
      </form>
      </th>
      <th>
      <form action = "ProjectController" method ="post">   
      <input type=hidden name = projectId value= ${project.id}>
      <input class = "employeeButton"  type="submit"  name = "choice" value = "AddEmployee"/>
      </form>
      </th>
      <th>
      </th>
      </tr>
      </table>
      </div>
      </c:if>
      <c:if test="${(project.status == 'inactive')}">
      <input class = "submitRestore" id = "restore" onclick = "return confirm('Do you want to restore this project ?')"  type="submit"  name = "choice" value = "Restore"/>
      <input class = "submitRestore"  type="submit"  name = "choice" value = "cancel"/>
      </c:if>
      </c:when>
      </c:choose>
      </div>
      </form>
      </center>
      <%@ include file="footer.html" %>
   </body>
</html>
