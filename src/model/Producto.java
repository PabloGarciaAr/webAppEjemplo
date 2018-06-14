package model;

public class Producto {

    private String nombre;
    private double precio;
    private String descripcion;
    private String imagen;
    private int id;

    public Producto(int id, String nombre, double precio, String descripcion, String imagen) {
        this.setNombre(nombre);
        this.precio = precio;
        this.descripcion = descripcion;
        this.imagen = imagen;
        this.setId(id);
    }

    public Producto(int id, String nombre, double precio) {
        this.setNombre(nombre);
        this.precio = precio;
        this.setId(id);
    }

    public String getDescripcion() {
        return descripcion;
    }

    public Producto setDescripcion(String descripcion) {
        this.descripcion = descripcion;
        return this;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

}