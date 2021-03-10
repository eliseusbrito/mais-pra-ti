package br.eliseu;

public class Eleicao {

    private Deputado deputado;

    public Eleicao() {
    }

    public Eleicao(Deputado deputado) {
        this.deputado = deputado;
    }

    public Deputado getDeputado() {
        return deputado;
    }

    public void setDeputado(Deputado deputado) {
        this.deputado = deputado;
    }
}
