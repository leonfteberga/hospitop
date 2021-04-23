import 'package:flutter/material.dart';

import 'componentes.dart';

class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cardápio"),
        ),
        body: Container(
          // Definir altura e largura do container:
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                    'https://www.receiteria.com.br/wp-content/uploads/receitas-de-hamburguer-gourmet-1-730x449.jpg'),
                Titulo(
                  txt: "Habilideburguer",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Preco(txt: "R\$ 35,90"),
                    ElevatedButton(
                      onPressed: () => null,
                      child: Text("Comprar"),
                    )
                  ],
                ),
                Titulo(txt: "Descrição"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      "Lanche saborosão de fraldinha com salada fresquinha e suculenta (cebola roxa, alface e tomate). Fatias monstruosas de bacon e queijo chedar malemolente."),
                ),
                Titulo(txt: "Trilha sonora:"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      "A lua cheia clareia as ruas do Capão, acima de nós só DEUS humilde, né, não? Né, não? Saúde (plin) mulher e muito som Vinho branco para todos, um advogado bom Esse frio 'tá de acabar Terça feira é ruim de rolê, vou fazer o que? Nunca mudou nem nunca mudará O cheiro de fogueira vai perfumando o ar Mesmo céu, mesmo CEP no lado sul do mapa"),
                ),
                Titulo(txt: 'Lanches relacionados:')
              ],
            ),
          ),
        ),
        // Botão flutuante do carrinho:
        floatingActionButton: FloatingActionButton.extended(
          onPressed: null,
          label: Text("Carrinho"),
          icon: Icon(Icons.add),
        ));
  }
}
