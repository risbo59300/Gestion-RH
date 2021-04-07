<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<f:view>

	<h:form>
	<h:panelGrid columns="2" border="5" bgcolor="color:green">
		<h:outputText value="Code : " />
		<h:inputText value="#{employeMBean.employe.code }" />
		
		<h:outputText value="Nom : " />
		<h:inputText value="#{employeMBean.employe.nom }" />
		
		<h:outputText value="Prenom : " />
		<h:inputText value="#{employeMBean.employe.prenom }" />
		
		<h:outputText value="Adresse : " />
		<h:inputText value="#{employeMBean.employe.adresse }" />
		
		<h:outputText value="Salaire : " />
		<h:inputText value="#{employeMBean.employe.salaire }" />
	
		<h:commandButton actionListener="#{employeMBean.add}" value="Valider" />
		<h:commandButton  type="reset" value="Annuler" />
		
	</h:panelGrid>	
	<h:dataTable value="#{employeMBean.listEmp}" var="emp" columnClasses="5">
				<h:column>
					<f:facet name="header">
						<h:outputText value="Code" />
					</f:facet>
					<h:outputText value="#{emp.code}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Nom" />
					</f:facet>
					<h:outputText value="#{emp.nom}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Prenom" />
					</f:facet>
					<h:outputText value="#{emp.prenom}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Adresse" />
					</f:facet>
					<h:outputText value="#{emp.adresse}" />
				</h:column>
				<h:column>
					<f:facet name="header">
						<h:outputText value="Salaire" />
					</f:facet>
					<h:outputText value="#{emp.salaire}" />
				</h:column>
			</h:dataTable>
	</h:form>
</f:view>
</body>
</html>