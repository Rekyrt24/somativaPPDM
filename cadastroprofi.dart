import 'package:flutter/material.dart';
import 'main.dart';
import 'Usuario.dart';
import 'menu.dart';
import 'loginfuncional.dart';

class Medico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormCadastro(),
      ),
    );

  }
}
class FormCadastro extends StatelessWidget {
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _especialidadeController = TextEditingController();

  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.purple,
      child: Container(
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _nomeController,
                  decoration: InputDecoration(
                      labelText: 'Nome',
                      prefixIcon: Icon(Icons.people),
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                )
            ),
            SizedBox(height: 20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _especialidadeController,
                  decoration: InputDecoration(
                      labelText: 'Login',
                      prefixIcon: Icon(Icons.login),
                      filled: true,
                      fillColor: Colors.grey[300],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )
                  ),
                )
            ),

            SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed:(){
                  Usuario user = new Usuario();
                  user.nome = _nomeController.text;
                  user.especialidade = _especialidadeController.text;

                  print(" ================User================");
                  print("Nome: " +user.nome);
                  print("Especialidade: "+user.especialidade);

                } ,
                child: const Text('Cadastro'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(color: Colors.white, fontSize: 14),
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    minimumSize: Size(180, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}