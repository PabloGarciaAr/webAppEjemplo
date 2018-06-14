<%@ include file="header.jsp"%>
<body>
	<div class="container">
		<h2>Bienvenido a e-Mercado</h2>
		<h3>Ingrese los datos para el nuevo producto:</h3>
		
		<form action="cargarProductosAction.jsp">
		<table class="table">
			<tr>
				<td>Nombre: </td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<td>Categoria: </td>
				<td><input type="text" name="categoria"></td>
			</tr>
			<tr>
				<td>Precio: </td>
				<td><input type="number" name="precio"></td>
			</tr>
			<!--tr>
				<td>Imagen: </td>
				<td><input type="text" name="imagen"></td>
			</tr-->
			<tr>
				<td>Descripcion: </td>
				<td><textarea rows="5" cols="20" name="descripcion"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Enviar.."/></td>
			</tr>
		</table>
		</form>
	</div>
	
</body>
</html>
