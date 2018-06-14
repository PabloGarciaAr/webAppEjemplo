<%@ include file="header.jsp"%>
<body>
	
	<div class="container">
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Producto prod = DataBase.getProducto(id);
		request.setAttribute("prod", prod);
	%>
		
	<h2>Bienvenido a e-Mercado</h2>
	<h3>Detalles del producto </h3>
	
	<ul>
		<li><c:out value="${prod.nombre }"/> </li>
		<li>Precio $: <c:out value="${prod.precio }"/></li>
		<li>Descripcion: <c:out value="${prod.descripcion }"/></li>
		
	</ul>
	<p> 
		<img src="imagenes/<c:out value="${prod.imagen }"/>.jpg">
	</p>
	
	<a href="index.jsp">Volver al inicio</a>
	
	</div>
</body>
</html>