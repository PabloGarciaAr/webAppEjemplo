<%@ include file="header.jsp"%>
<body>
<%
	String id = request.getParameter("id");
	String categoria = request.getParameter("categoria");
	String nombre = request.getParameter("nombre");
	String precio = request.getParameter("precio");
	String descripcion = request.getParameter("descripcion");
	
	DataBase db = new DataBase();
	boolean resultado = db.insertarProducto(id, categoria, "", nombre, precio, descripcion);
	
	String mensaje = resultado?
	    "¡Los datos fueron cargados correctamente!":
	    "Hubo un error intente nuevamente";
	request.setAttribute("mensaje", mensaje);
%>
	<div class="container">
		<h2>Bienvenido a e-Mercado</h2>
		
		<h3><c:out value="${mensaje}"></c:out></h3>
		
		<br>
		<a href="cargarProductos.jsp">Cargar otro producto</a>
		<br>
		<a href="index.jsp">Ir al inicio</a>
	</div>
	
</body>
</html>