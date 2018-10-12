<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="login.css"/>

   </head>
   <body class>
      <center class="solid">
<div id = "accessByPin">
         <form action = "AdminController" method ="post">
            <h2> Login </h2>
            <label><b>UserMail</b></label>
            <input type="text" placeholder="Enter your mail address" name="email"   maxlength = "34" title = "Enter a valid name"required> <br>
            <label><b>Password</b></label>
            <input type="password"  class="password" placeholder="Enter Password" name="password" maxlength = "15"  pattern="^(?=.*[a-z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,15}$" title = "Enter a valid password" required><br>
            <div>
               <input class = "submitBUTTON" type="submit"  name = "choice" value = "Login"/>
               <a href = "register.jsp"> Create a new account
            </div>
            </div>

         </form>
         </div>
      </center>
   </body>
<script>
function myFunction() {
    var x = document.getElementById("accessByPin");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}


</sscript>
<c:choose>
         <c:when test = "${errormessage != null }">
            <script>
               alert("${errormessage}");
            </script>
         </c:when>
      </c:choose>
<c:choose>
         <c:when test = "${response != null }">
            <script>
               alert("${response}");      
              }
            </script>
         </c:when>
      </c:choose>
</html>
