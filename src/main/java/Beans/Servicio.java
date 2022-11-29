package Beans;

public class Servicio extends Usuarios{

    private String fechaDeRegistro;
    private String tiempo;
    private String costo;
    private int idTipoDeServicio;

    public String getFechaDeRegistro() {
        return fechaDeRegistro;
    }

    public void setFechaDeRegistro(String fechaDeRegistro) {
        this.fechaDeRegistro = fechaDeRegistro;
    }

    public String getTiempo() {
        return tiempo;
    }

    public void setTiempo(String tiempo) {
        this.tiempo = tiempo;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }

    public int getIdTipoDeServicio() {
        return idTipoDeServicio;
    }

    public void setIdTipoDeServicio(int idTipoDeServicio) {
        this.idTipoDeServicio = idTipoDeServicio;
    }
}
