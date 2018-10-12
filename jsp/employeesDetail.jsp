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
         <jsp:param name="attribute" value="EmployeeController" />
      </jsp:include>
      <center> All Employees Information </center>
      <form  action = "EmployeeController" method ="post">
         <div>
            <input type="text" style = "width:50%;" placeholder="Enter your file name and file will be located in files folder" name="name" maxlength="10" title="Enter a valid name" value= "" required>
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
      <table id="employee" >
         <thead>
            <tr>
               <th>Id</th>
               <th>Name</th>
               <th>Designation</th>
               <th>Email</th>
               <th>Dob</th>
               <th>Mobilenumber</th>
               <th>Status</th>
               <th>Action</th>
            </tr>
         </thead>
         <c:forEach items= "${employees}" var = "employee">
            <tr>
               </form>
               <td>${employee.id}</td>
               <td>${employee.name}</td>
               <td>${employee.designation}</td>
               <td>${employee.mailId}</td>
               <td>${employee.dob}</td>
               <td>${employee.mobileNumber}</td>
               <td>${employee.status}</td>
               <td>
                  <c:choose>
                     <c:when test = "${employee.status == 'active'}">
                        <input type = "button"  class ="pop" value = "action"title = "action" data-html="true" data-toggle="popover" data-content="
                           <form  id = myform3 action = EmployeeController method =post>   
                           <input type=hidden name = id value= ${employee.id}>
                           <input type=hidden name=choice value= Delete>
                           <a onclick= document.getElementById('myform3').submit();> <img src = images/d /></a>
                           </form>
                           <form  id = myform4 action = EmployeeController method =post>
                           <input type=hidden name = id value= ${employee.id}>
                           <input type=hidden name = status value= ${employee.status}>
                           <input type=hidden name=choice value= Search>
                           <a onclick=document.getElementById('myform4').submit();> <img src = images/edit.png /></a>
                           </form>
                           </input>
                           "></input>
                     </c:when>
                     <c:when test = "${employee.status == 'inactive'}">
                        <input type = "button"  class ="pop" value = "action"title = "action" data-html="true" data-toggle="popover" data-content="
                           <form  id = myform1 action = EmployeeController method =post>   
                           <input type=hidden name = id value= ${employee.id}>
                           <input type=hidden name=choice value= Restore>
                           <a onclick=document.getElementById('myform1').submit();> <img src = images/restore.png /></a>
                           </form>
                           <form  id = myform2 action = EmployeeController method =post>
                           <input type=hidden name = id value= ${employee.id}>
                           <input type=hidden name = status value= ${employee.status}>
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
         </form>
      </table>
      </form>
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
