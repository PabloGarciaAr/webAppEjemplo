package model;

public class Categoria {

    private String nombre;
    private int id;

    public Categoria(int i, String string) {
        nombre = string;
        id = i;
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
