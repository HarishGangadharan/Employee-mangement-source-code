<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
   <head>
      <link rel="icon" href="images/employeetab.png" type="image/gif" sizes="16x16">
      <link rel="stylesheet" type="text/css" href="format.css"/>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="ClientController" />
      </jsp:include>
      <center> Client Information </center>
      <form action = "ClientController" method ="post">
         <table align= 'center'>
            <tr>
               <th>
                  <table>
                     <c:choose>
                        <c:when test = "${client.name != null}">
                           <tr>
                              <td align='center'>  <img src="images/id.png"></td>
                              <td>  <input type="text" name = "id" value = ${client.id} readonly></td>
                           </tr>
                        </c:when>
                     </c:choose>
                     <tr>
                        <td align='center'> <img src="images/account.png"/></td>
                        <td> <input type="text" placeholder="Client name" name="clientname" pattern="[A-Za-z]*" title="Enter a valid name" maxlength="10" value = "${client.name}" required ></td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/email.png"></td>
                        <td>  
                           <input class = "email" type="email" placeholder="Client Email address" name="clientmail" pattern="[a-z0-9._]+@[a-z.]+" title="Enter a valid Email address" maxlength="10" value = "${client.mailId}" required>
                        </td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/phone.png"></td>
                        <td>  <input type="text" placeholder="Client mobile number" name="clientphone" pattern="[0-9]{10}" title="Enter a valid mobile number" maxlength="10" value = "${client.mobileNumber}" required></td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/you.svg"></td>
                        <td> <input type="text" placeholder="Client requirement" name="clientrequirements" pattern="[A-Za-z]*" title="Enter a valid requirement"  maxlength="10" value = "${client.requirements}" required  ></td>
                     </tr>
                  </table>
               </th>
                     <c:choose>
                  <c:when test = "${perAddress.city != null}">
                     <th>
                        <table>
                           <tr>
                              <h2>
                                 Permanent address
                              </h2>
                           </tr>
                           <tr>
                              <td margin align='center'>
                                 <h4> Address </h4>
                              </td>
                              <td> 
                                 <textarea placeholder =  "Street Address " rows="5" cols="30"  pattern="[A-Za-z]*" name="perAddressLine1" title="Enter a valid address" required>${perAddress.firstAddressline}
                                 </textarea >
                              </td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>city </h4>
                              </td>
                              <td> <input type="text" placeholder=" City" name="perCity" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10" value = ${perAddress.city} ></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>state </h4>
                              </td>
                              <td> <input type="text" placeholder="State" name="perState" pattern="[A-Za-z]*" title="Enter a valid state" maxlength="10" value = ${perAddress.state} ></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>pincode </h4>
                              </td>
                              <td> <input type="text" placeholder="Pincode" name="perPincode" pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6" value = ${perAddress.pincode} ></td>
                           </tr>
                        </table>
                     </th>
                  </c:when>
               </c:choose>
               <c:choose>
                  <c:when test = "${tempAddress.city != null}">
                     <th>
                        <table>
                           <tr>
                              <h2>
                                 Temporary address
                              </h2>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4> Address</h4>
                              </td>
                              <td> 
                                 <textarea placeholder =  "Street Address" rows="5" cols="30" pattern="[A-Za-z]*" name="tempAddressLine1" title="Enter a valid address" required> ${tempAddress.firstAddressline}
                                 </textarea >
                              </td>
                           </tr>
                           <td align='center'>
                              <h4>city </h4>
                           </td>
                           <td> <input type="text" placeholder="City" name="tempCity" pattern="[A-Za-z]*" title="Enter a valid address" maxlength="10" value = ${tempAddress.city} ></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>state </h4>
                              </td>
                              <td> <input type="text" placeholder="State" name="tempState" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10" value = ${tempAddress.state} ></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>pincode </h4>
                              </td>
                              <td> <input type="text" placeholder="Pincode" name="tempPincode"  pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6" value = ${tempAddress.pincode} ></td>
                           </tr>
                        </table>
                     </th>
                  </c:when>
               </c:choose>
            </tr>
         </table>
         <div>
            <c:choose>
               <c:when test = "${client.name == null}">
                  <table>
                     <tr>
                        <th>
                           <input class = "submitButton" type="submit"  name = "choice" value = "Add address"/>
                        </th>
                        <th>
                           <input class = "submitButton" type="reset" value="Reset"  onclick = "return  confirm('Do you want to reset this client detail ?');">
                        </th>
                     </tr>
                  </table>
               </c:when>
               <c:when test = "${client.name != null}">
                  <div>
                     <c:if test="${(client.status == 'active')}">
                        <table>
                           <tr>
                              <th>
      <form action = "ClientController" method ="post">   
      <input class = "employeeButton" id = "update" onclick = "return confirm('Do you want to update this client ?')"  type="submit"  name = "choice" value = "Update"/>
      </form>
      </th>
      <th>
      <form action = "ClientController" method ="post">   
      <input type=hidden name = id value= ${client.id}>
      <input class = "employeeButton" id = "delete" onclick = "return confirm('Do you want to delete this client ?')"   type="submit"  name = "choice" value = "Delete"/>
      </form>
      </th>
      <th>
      <form action = "ClientController" method ="post">  
      <input type=hidden name = clientId value= ${client.id}> 
      <input class = "employeeButton"  type="submit"  name = "choice" value = "AddProjects"/>
      </form>
      </th>
      </tr>
      </table>
      </div>
      </c:if>
      <c:if test="${(client.status == 'inactive')}">
      <input class = "submit" id = "restore" onclick =  "return confirm('Do you want to restore this client ?')"  type="submit"  name = "choice" value = "Restore"/>
      <input class = "submit"  type="submit"  name = "choice" value = "cancel"/>
      </c:if>
      </c:when>
      </c:choose>
      </div>
      </form>
      </center>
      <%@ include file="footer.html" %>
   </body>
</html>
