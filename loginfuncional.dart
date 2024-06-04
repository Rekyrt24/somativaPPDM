import 'package:flutter/material.dart';
import 'main.dart';
import 'menu.dart';
import 'cadastrouser.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          backgroundColor: Colors.grey,
        ),
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  TextEditingController _usernameController =
  TextEditingController(); //criando a variavel de acesso as TextField
  TextEditingController _passwordController =
  TextEditingController(); //criando a variavel de acesso as TextField
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white, // Fundo azul
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Login',
              prefixIcon: Icon(Icons.person),
              filled: true,
              fillColor: Colors.grey,
            ),
          ),
          SizedBox(height: 20.0),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Senha',
              prefixIcon: Icon(Icons.lock),
              filled: true,
              fillColor: Colors.grey,
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if ((_usernameController.text == 'emerson23@gmail.com') &&
                  (_passwordController.text == '12345678')) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => inicio()),
                );

              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Digite o Email corretamente')));
              }
            },
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              // Cor de fundo do botão
              textStyle: TextStyle(fontSize: 18),
              // Estilo do texto
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              // Espaçamento interno
              minimumSize: Size(100, 0),
              // Largura mínima do botão
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // Borda arredondada
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Principal()),
              );
            },
            child: const Text('+ Novo'),
          ),
          SizedBox(height: 50.0,),
        ],
      ),
    );
  }

}