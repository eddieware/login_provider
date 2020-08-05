import 'package:flutter/material.dart';

class LoginProvider extends StatefulWidget {
  LoginProvider({Key key}) : super(key: key);

  @override
  _LoginProviderState createState() => _LoginProviderState();
}

class _LoginProviderState extends State<LoginProvider> {
  String _email = '';
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Text('Numero de Clicks!!!! '),
          _crearEmail(),
          _crearPassword()

          //Text('$conteo',style: estiloTexto) //$ interpolacion string
        ],
      )
          // la mayoria de los Widgets solo pueden tener un child
          ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

        onPressed: () {
          print('Hola Mundo!');
        }, //:null,// hace disable el boton
      ),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              //personalizar que tan pronunciados quiero los border
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              //personalizar que tan pronunciados quiero los border
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Paswword',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (valor) => setState(() {
        _email = valor;
      }),
    );
  }
}
