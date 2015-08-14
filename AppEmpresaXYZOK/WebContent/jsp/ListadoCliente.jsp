<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Listado de clientes</title>
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
	<h3>Agregar un cliente</h3>
	<s:form method="post" action="Agregar_Cliente">
		<s:textfield name="cliente.identificador" id="cliente.identificador" label="Identificador" labelposition="top" cssClass="input"/>
		<s:textfield name="cliente.contrasena" id="cliente.contrasena" label="Contraseña" labelposition="top" cssClass="input"/>
		<s:submit value="Agregar un cliente"/>
	</s:form>
	
	<table border="0" id="tabla" cellpadding="0" cellspacing="0">
	<tr><td><b>ID</b></td><td><b>Identificador</b></td><td><b>Contrase&ntilde;a</b></td><td colspan="2" align="center"><b>Gesti&oacute;n</b></td></tr>
	<s:iterator value="listaClientes" status="linea">
	<s:if test="#linea.odd"><tr class="linea1"></s:if>
	<s:if test="#linea.even"><tr class="linea2"></s:if>
    	<td><s:property value="idCliente"/></td>
    	<td><s:property value="identificador"/></td>
    	<td><s:property value="contrasena"/></td>
    	<td align="center"><a href="Editar_Cliente.action?idClienteActual=${idCliente}"/><img src="imagenes/editarcliente.png" alt="Editar" title="Editar" border="0"/></a></td>
    	<td align="center"><a href="Eliminar_Cliente.action?idClienteActual=${idCliente}"/><img src="imagenes/eliminarcliente.png" alt="Eliminar" title="Eliminar" border="0"/></a></td>
  	</tr>
	</s:iterator>
	</table>	
</div>
</body>
</html>
