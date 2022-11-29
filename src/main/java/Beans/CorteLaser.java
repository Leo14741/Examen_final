package Beans;

public class CorteLaser {

    private String grosorLinea;
    private String colorDeLinea;
    private String material;
    private String urlDeLaImagen;
    private String dimensiones;
    private int idTipoDeServicio = 2 ;

    public String getGrosorLinea() {
        return grosorLinea;
    }

    public void setGrosorLinea(String grosorLinea) {
        this.grosorLinea = grosorLinea;
    }

    public String getColorDeLinea() {
        return colorDeLinea;
    }

    public void setColorDeLinea(String colorDeLinea) {
        this.colorDeLinea = colorDeLinea;
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

    public String getDimensiones() {
        return dimensiones;
    }

    public void setDimensiones(String dimensiones) {
        this.dimensiones = dimensiones;
    }

    public int getIdTipoDeServicio() {
        return idTipoDeServicio;
    }

    public void setIdTipoDeServicio(int idTipoDeServicio) {
        this.idTipoDeServicio = idTipoDeServicio;
    }
}
