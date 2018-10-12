<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <link rel="icon" href="images/employeetab.png" type="image/gif" sizes="16x16">
      <link rel="stylesheet" type="text/css" href="format.css"/>
   <body>
      <jsp:include page="header.jsp" >
         <jsp:param name="attribute" value="EmployeeController" />
      </jsp:include>
      <center> Employee Information </center>
      <form:form action = "save" method ="post">
         <table align= 'center'>
            <tr>
               <th>
                  <table>
                     <c:choose>
                        <c:when test = "${employee.name != null}">
                           <tr>
                              <td align='center'>  <img src="images/id.png"></td>
                              <td>  <form:input path="id"/></td>
                           </tr>
                           <tr>
                              <td align='center'>  <img src="images/age.png"></td>
                              <td>  <form:input path="dob"/></td>
                           </tr>
                        </c:when>
                     </c:choose>
                     <tr>
                        <td align='center'> <img src="images/account.png"/></td>
                        <td> <form:input path="name" /></td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/email.png"></td>
                        <td>  
                           <form:input path="email" class ="email"  placeholder="Employee Email addfgdffdfgress" pattern="[a-z0-9._]+@[a-z.]+" title="Enter a valid Email address" maxlength="20" />
                        </td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/phone.png"></td>
                        <td>  <form:input path="phone" placeholder="Employee Mobile number" pattern="[0-9]{10}" title="Enter a valid mobile number" maxlength="10"  /></td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/birth-date-filled.png"></td>
                        <td>  <form:input path ="dob" class="date"   /></td>
                     </tr>
                     <tr>
                        <td align='center'>  <img src="images/desingnation1_44x44.png"></td>
                        <td> <form:input path="text" placeholder="Employee Designation" name="designation" pattern="[A-Za-z]*" title="Enter a valid designation"  maxlength="10" /></td>
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
                                 <textarea placeholder =  "Street Address " rows="5" cols="30"  pattern="[A-Za-z]*" name="perAddressLine1" title="Enter a valid address" >
                                 </textarea >
                              </td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>city </h4>
                              </td>
                              <td> <form:input path="text" placeholder=" City" name="perCity" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10" /></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>state </h4>
                              </td>
                              <td> <form:input path="text" placeholder="State" name="perState" pattern="[A-Za-z]*" title="Enter a valid state" maxlength="10" /></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>pincode </h4>
                              </td>
                              <td> <form:input path="text" placeholder="Pincode" name="perPincode" pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6"  /></td>
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
                                 <textarea placeholder =  "Street Address" rows="5" cols="30" pattern="[A-Za-z]*" name="tempAddressLine1" title="Enter a valid address" > 
                                 </textarea >
                              </td>
                           </tr>
                           <td align='center'>
                              <h4>city </h4>
                           </td>
                           <td> <form:input path="text" placeholder="City" name="tempCity" pattern="[A-Za-z]*" title="Enter a valid address" maxlength="10" /></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>state </h4>
                              </td>
                              <td> <form:input path="text" placeholder="State" name="tempState" pattern="[A-Za-z]*" title="Enter a valid city" maxlength="10"  /></td>
                           </tr>
                           <tr>
                              <td align='center'>
                                 <h4>pincode </h4>
                              </td>
                              <td> <form:input path="text" placeholder="Pincode" name="tempPincode"  pattern="[0-9]{6}" title="Enter a valid pincode" maxlength="6" /></td>
                           </tr>
                        </table>
                     </th>
                  </c:when>
               </c:choose>
            </tr>
         </table>
         <div>
            <c:choose>
               <c:when test = "${employee.name == null}">
                  <table>
                     <tr>
                        <th>
                           <form:input path = "submit" class = "submitButton"   name = "choice" value = "Add address"/>
                        </th>
                        <th>
                           <form:input path = "reset" class = "submitButton" value="Reset"  onclick = "return  confirm('Do you want to reset this employee detail ?');"/>
                        </th>
                     </tr>
                  </table>
               </c:when>
               <c:when test = "${employee.name != null}">
                  <c:if test="${(employee.status == 'active')}">
                     <table>
                        <tr>
                           <th>
      <form:form action = "EmployeeController" method ="post">   
      <form:hidden path="birthdate"/>
      <form:input path = "submit" class = "employeeButton" id = "update" onclick = "return  confirm('Do you want to update this employee ?');"   name = "choice" value = "Update"/>
      </form:form>
      </th>
      <th>
      <form:form action = "EmployeeController" method ="post">   
      <form:hidden path="id" />
      <form:input path = "submit" class = "employeeButton" id = "delete" onclick = "return  confirm('Do you want to delete this employee ?');"  name = "choice" value = "Delete"/>
      </form:form>
      </th>
      <th>
      <form:form action = "EmployeeController" method ="post">   
      <form:input path = "submit" class = "employeeButton"    name = "choice"  onclick = "return  confirm('Do you want to cancel?');" value = "Cancel"/>
      </form:form>
      </th>
      </tr>
      </table>
      </c:if>
      <c:if test="${(employee.status == 'inactive')}">
      <form:input path = "submit" class = "submitRestore" id = "restore" onclick =  "return  confirm('Do you want to restore this employee ?');"  name = "choice" value = "Restore"/>
      <form:input path = "submit" class = "submitRestore"   name = "choice" value = "Cancel"/>
      </c:if>
      </c:when>
      </c:choose>
      </div>
      </form:form>
      </center>
      <%@ include file="footer.html" %>
   </body>
<c:choose>
         <c:when test = "${response != null }">
            <script>
               alert("${response}");
            </script>
         </c:when>
      </c:choose>
</html>
