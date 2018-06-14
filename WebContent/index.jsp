<%@ include file="header.jsp"%>
<body>

	<%
		try {
			
		List<Categoria> categorias = DataBase.getCategorias();
		request.setAttribute("list", categorias);
		} catch (Exception e){
			request.setAttribute("list", new ArrayList<Categoria>());
		}
		
		// comentario en java
	%>
	<!-- comentario en HTML -->
	<%-- comentario en jsp --%>
	
	<div class="container">
		<h2>Bienvenido a e-Mercado</h2>
		<h3>Lista de categorias:</h3>

		<ul>
			<c:forEach items="${list}" var="item">
				<li><a
					href="productos.jsp?id=<c:out value="${item.id}"></c:out>"> <c:out
							value="${item.nombre}"></c:out>
				</a></li>
			</c:forEach>
		</ul>
	</div>

</body>
</html>