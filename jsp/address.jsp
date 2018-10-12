<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
   <head>
      <link rel="stylesheet" type="text/css" href="format.css"/>
   </head>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="ProjectController" />
      </jsp:include>
      <center> Address Information </center>
      <form action = ${controller} method ="post">
         <table align = 'center'>
            <tr>
               <th>
                  <table>
                     <tr>
                        <td align='center'>
                           <h4>Permanent Address </h4>
                        </td>
                        <td> 
                           <textarea  rows="5" cols="30"  pattern="[A-Za-z]*" name="perAddressLine1" id="perAddressLine1" title="Enter a valid address" placeholder=" Street Address" required></textarea >
                        </td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>city </h4>
                        </td>
                        <td> <input type="text" placeholder="City" name="perCity"  id="perCity" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10" required ></td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>state </h4>
                        </td>
                        <td> <input type="text" placeholder="State" name="perState" id="perState" pattern="[A-Za-z]*" title="Enter a valid state" maxlength="10" required ></td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>pincode </h4>
                        </td>
                        <td> <input type="text" placeholder="Pincode" name="perPincode"  id="perPincode" pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6" required ></td>
                     </tr>
                     <tr>
                        <td>
                        </td>
                        <td>
                           <input type="checkbox" class = "copyAddress" id ="lifecheck" name="vehicle" onclick = "exefunction()" value="Bike"> Copy address to paste
                        </td>
                     </tr>
                  </table>
               </th>
               <th>
                  <table>
                     <tr>
                        <td align='center'>
                           <h4>Temporary Address </h4>
                        </td>
                        <td> 
                           <textarea placeholder =  " Street Address" rows="5" cols="30" pattern="[A-Za-z]*" name="tempAddressLine1"  id="tempAddressLine1"title="Enter a valid address" required></textarea >
                        </td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>city </h4>
                        </td>
                        <td> <input type="text" placeholder="City" name="tempCity"  id ="tempCity"pattern="[A-Za-z]*" title="Enter a valid address" maxlength="10" required ></td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>state </h4>
                        </td>
                        <td> <input type="text" placeholder="State" name="tempState" id="tempState" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10" required ></td>
                     </tr>
                     <tr>
                        <td align='center'>
                           <h4>pincode </h4>
                        </td>
                        <td> <input type="text" placeholder="Pincode" name="tempPincode" id="tempPincode"  pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6" required ></td>
                     </tr>
                  </table>
               </th>
            </tr>
         </table>
         <table>
            <tr>
               <th>
                  <input type=hidden name = "name" value= ${employee.name}>
                  <input type=hidden name = "designation" value= ${employee.designation}>
                  <input type=hidden name = "email" value= ${employee.mailId}>
                  <input type=hidden name = "phone" value= ${employee.mobileNumber}>
                  <input type=hidden name = "dob" value= <%=request.getAttribute("dob")%> >
                  <input type=hidden name = "gender" value= ${employee.gender}>
                  <input type=hidden name = "clientname" value= ${client.name}>
                  <input type=hidden name = "clientrequirements" value= ${client.requirements}>
                  <input type=hidden name = "clientmail" value= ${client.mailId}>
                  <input type=hidden name = "clientphone" value= ${client.mobileNumber}>
                  <input class = "submitButton" type="submit"  name = "choice" value = "Submit"/>
               </th>
               <th>
                  <input class = "submitButton" type="reset" value="Reset"  onclick = "return  confirm('Do you want to reset this address detail ?');">
               </th>
            </tr>
         </table>
      </form>
   </body>
   <%@ include file="js/Common.js" %>
   <%@ include file="footer.html" %>
</html>
