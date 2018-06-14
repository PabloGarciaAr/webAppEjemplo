<%@ include file="header.jsp"%>
<body>
	
	<div class="container">
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		List<Producto> prods = DataBase.getProductos(id);
		request.setAttribute("prods", prods);
	%>
		
	<h2>Bienvenido a e-Mercado</h2>
	<h3>Lista de productos de categoria <%= id %>: </h3>
	
	<table class="table" >
	<tbody>
		<tr>
		<th>Nombre</th>
		<th>Link</th>
		<th>Precio:</th>
		<tr>
	<c:forEach items="${prods}" var="item">
	    <tr>
	    	<td><c:out value="${item.nombre}"></c:out></td>
	    	<td>
		    <a href="productoDetalle.jsp?id=<c:out value="${item.id}"></c:out>">
	    		Ver en detalle
	    	</a>
	    	</td>
	    	<td><c:out value="${item.precio}"></c:out></td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	
	<a href="index.jsp">Volver al inicio</a>
	
	</div>
</body>
</html>