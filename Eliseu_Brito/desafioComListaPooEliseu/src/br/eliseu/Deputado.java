package br.eliseu;

public abstract class Deputado {

    private String nome;
    private Integer numero;
    private String partido;

    public Deputado(String nome, Integer numero, String partido) {
        this.nome = nome;
        this.numero = numero;
        this.partido = partido;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }

    @Override
    public String toString() {
        return "Deputado{" +
                "nome='" + nome + '\'' +
                ", numero=" + numero +
                ", partido='" + partido + '\'' +
                '}';
    }
}
