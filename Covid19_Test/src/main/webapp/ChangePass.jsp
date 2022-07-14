<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ChangePass</title>
<style>

        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: blue;
}

li {
  float: right;
	}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 30px;
  text-decoration: none;
  font-size: 20px;
}

li a:hover {
  background-color: #111111;
}


 </style>
</head>
<body style="background-color: lightskyblue;">
<header>
           <ul> 
            <li><a a class="drop" href="Homepage.jsp">Home</a></li>
        </ul>
        </header>
        <br><br>
<f:view>
<h:form>
 <div style="padding: 30px;font-size: 25px; margin-right: 00px; margin-left: 385px; border: 2px solid black;width: 40%;height: 120%; background-color: lightgoldenrodyellow;">
                <h2 style="color: red; text-align: center;">Insert Informations</h2>
	<fieldset>
		<legend>Account Details</legend>
		<h:outputText value="UserId::" ></h:outputText>
		<h:inputText id="Uid" value="#{patientBean.userid}"></h:inputText><br><br>
         <h:outputText value="Password:"></h:outputText>
         <h:inputText id="pass" value="#{patientBean.password}"></h:inputText><br><br>
         <h:outputText value="Confarm Password:"></h:outputText>
         <h:inputText id="cp" value="#{patientBean.confarm}"></h:inputText><br><br>
         <h:outputText value="Type"></h:outputText>
		<h:selectOneMenu value="#{patientBean.type}" required="true" requiredMessage=" mandatory">
			<f:selectItem itemValue="Doctor" itemLabel="Doctor" />
			<f:selectItem itemValue="Admin" itemLabel="Admin" />
			<f:selectItem itemValue="Patient" itemLabel="Patient" />
		</h:selectOneMenu><br>
		<h:commandButton value="Submit" action="#{patientBean.changepass}" ></h:commandButton>
	</fieldset>
	</div>
	</h:form>
	</f:view>
</body>
</html>