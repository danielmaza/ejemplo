<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Editar un cliente</title>
<style type="text/css">@import url(css/estilos.css);</style>
</head>
<body>
<!-- Mensaje de error -->
<s:if test="errors.size()>0">
<div id="mensaje_error">
	<label>Se han producido los errores siguientes: </label>
	<ul><s:fielderror/></ul>
</div>
</s:if>

<div id="carta">									
	<h3>Editar un cliente</h3>
	<s:form method="post" action="Modificar_Cliente">
		<s:hidden name="cliente.idCliente" key="cliente.idCliente" />
		<s:textfield name="cliente.identificador" id="cliente.identificador" label="Identificador" labelposition="top" cssClass="input"/>
		<s:textfield name="cliente.contrasena" id="cliente.contrasena" label="Contraseña" labelposition="top" cssClass="input"/>
		<s:submit value="Modificar un cliente"/>
	</s:form>		
</div>
</body>
</html>
