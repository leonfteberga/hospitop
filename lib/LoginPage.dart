import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Fundo:
        Container(
            height: double.infinity,
            child: Image.network(
              'https://wallpaperaccess.com/full/3910201.jpg',
              fit: BoxFit.cover,
            )),
        // Máscara de opacidade:
        Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.45),
        ),
        //Container do Formulário:
        Container(
          //height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
              Image.network('https://i.imgur.com/XFEsGO7.png',
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        // Email:
                        TextField(
                          // Especificar o tipo de teclado que será exibido:
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (text) {
                            // Armazenar o valor do campo na variavel 'email':
                            email = text;
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Digite seu email',
                              border: OutlineInputBorder()),
                        ),
                        // Caixa de "espaçamento":
                        SizedBox(
                          height: 10,
                        ),
                        // Senha:
                        TextField(
                          obscureText: true,
                          onChanged: (text) {
                            // Armazenar o valor do campo na variável 'senha':
                            senha = text;
                          },
                          decoration: InputDecoration(
                              labelText: 'Senha',
                              hintText: 'Digite sua senha',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Botão entrar
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (email == 'leon@senac.br' &&
                                      senha == '123') {
                                    //print('Sucesso!');
                                   Navigator.pushNamed(context, '/inicio');
                                  } else {
                                    print('Dados incorretos');
                                  }
                                },
                                child: Text("ENTRAR"))),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}