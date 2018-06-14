package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DataBase {

    private static Connection conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            com.mysql.jdbc.Driver d = new com.mysql.jdbc.Driver();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stock", "root", "");
            return con;
        } catch (Exception e) {
            System.out.println("Hubo algun error con la base de datos.. ");
            e.printStackTrace();
            return null;
        }
    }

    public static List<Categoria> getCategorias() throws ClassNotFoundException, SQLException {

        Connection con = conectar();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from categorias");
        // / RS ES DEL TIPO CATEGORIA: id (int) - nombre (varchar:String)
        List<Categoria> lista = new ArrayList<Categoria>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String nombre = rs.getString("nombre");
            lista.add(new Categoria(id, nombre));
        }

        con.close();
        return lista;
    }

    public static List<Producto> getProductos(int id) throws SQLException {
        Connection con = conectar();
        Statement stmt = con.createStatement();
        // QUIERO TODOS LOS PRODCUTOS DE ID CATEGORIA
        ResultSet rs = stmt.executeQuery("select id, precio, nombre from productos where idcategoria=" + id);

        List<Producto> lista = new ArrayList<Producto>();
        while (rs.next()) {
            lista.add(new Producto(rs.getInt("id"), rs.getString("nombre"), rs.getDouble("precio")));
        }

        return lista;
    }

    public static Producto getProducto(int id) throws SQLException, ClassNotFoundException {
        Connection con = conectar();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select * from productos where id=" + id);
        Producto p = null;

        while (rs.next()) {
            p = new Producto(rs.getInt("id"), rs.getString("nombre"), rs.getInt("precio"), rs.getString("descripcion"),
                rs.getString("imagen"));
        }
        con.close();
        return p;
    }

    public boolean insertarProducto(String id, String categoria, String nombre, String imagen, String precio,
        String descripcion) {

        try {
            Connection con = conectar();
            Statement stmt;
            stmt = con.createStatement();
            stmt.executeUpdate("INSERT INTO productos (id, nombre, precio, descripcion, imagen, idcategoria)"
                + " VALUES (NULL, '" + nombre + "', '" + precio + "', '" + descripcion + "', '" + imagen + "', '"
                + categoria + "');");
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }
}