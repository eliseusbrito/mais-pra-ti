package br.eliseu;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class App {

    public static void main(String[] args) {
        List<Deputado> deputadoList = new ArrayList<>();
        deputadoList.add(new Federal("João Plenário", 7171, "LVE", "Federal"));
        deputadoList.add(new Federal("Raulin do Cha", 8171, "PET", "Federal"));
        deputadoList.add(new Federal("Só Alegria", 9171, "TGW", "Federal"));
        deputadoList.add(new Estadual("Ce Ta Doido", 71710, "LVE", "Estadual"));
        deputadoList.add(new Estadual("Vem ser Rico", 81711, "PET", "Estadual"));
        deputadoList.add(new Estadual("Palhacinho Minduin", 91712, "TGW", "Estadual"));

        System.out.println("Digite o numero do Candidato: ");
        Scanner sc = new Scanner(System.in);
        Integer numeroCandidato = sc.nextInt();
        Eleicao eleicao = new Eleicao();

        for (int i = 0; i < deputadoList.size(); i++) {
            if (deputadoList.get(i).getNumero().equals(numeroCandidato)) {
                eleicao.setDeputado(deputadoList.get(i));

            }
        }
        if (eleicao.getDeputado() == null) {
            System.out.println("Nenhum deputado com este número cadastrado. Obs.: Numeração de Deputado Federal deve ter quatro digitos e Deputado Estadual cinco digitos");

        } else {
            System.out.println("Número digitado é de um candidato a Deputado " + eleicao.getDeputado().toString());
            System.out.println(eleicao.getDeputado());
        }

    }
}
