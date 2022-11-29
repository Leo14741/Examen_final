package Beans;

public class Impresion3D {

    private int densidadPieza;
    private String grosor;
    private float alturaDeLaCapa;
    private String material;
    private String urlDeLaImagen;
    private boolean Autoservicio;

    public int getDensidadPieza() {
        return densidadPieza;
    }

    public void setDensidadPieza(int densidadPieza) {
        this.densidadPieza = densidadPieza;
    }

    public String getGrosor() {
        return grosor;
    }

    public void setGrosor(String grosor) {
        this.grosor = grosor;
    }

    public float getAlturaDeLaCapa() {
        return alturaDeLaCapa;
    }

    public void setAlturaDeLaCapa(float alturaDeLaCapa) {
        this.alturaDeLaCapa = alturaDeLaCapa;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getUrlDeLaImagen() {
        return urlDeLaImagen;
    }

    public void setUrlDeLaImagen(String urlDeLaImagen) {
        this.urlDeLaImagen = urlDeLaImagen;
    }

    public boolean isAutoservicio() {
        return Autoservicio;
    }

    public void setAutoservicio(boolean autoservicio) {
        Autoservicio = autoservicio;
    }
}
