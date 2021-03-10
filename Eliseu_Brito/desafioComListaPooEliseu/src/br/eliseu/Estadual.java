package br.eliseu;

public class Estadual extends Deputado{

   private String tipo;

    public Estadual(String nome, Integer numero, String partido) {
        super(nome, numero, partido);
    }

    public Estadual(String nome, Integer numero, String partido, String tipo) {
        super(nome, numero, partido);
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void tipoDeputado() {
        System.out.println("Número digitado é de um candidato a Deputado Estadual");
    }

    @Override
    public String toString() {
        return "Estadual{" +
                "tipo='" + tipo + '\'' +
                '}';
    }
}
