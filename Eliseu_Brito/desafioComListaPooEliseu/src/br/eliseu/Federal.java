package br.eliseu;

public class Federal extends Deputado {

    private String tipo;

    public Federal(String nome, Integer numero, String partido) {
        super(nome, numero, partido);
    }

    public Federal(String nome, Integer numero, String partido, String tipo) {
        super(nome, numero, partido);
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Federal{" +
                "tipo='" + tipo + '\'' +
                '}';
    }

    public void tipoDeputado() {
        System.out.println("Número digitado é de um candidato a Deputado Federal");
    }



}
