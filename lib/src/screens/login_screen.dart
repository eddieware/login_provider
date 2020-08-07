import 'package:flutter/material.dart';
import 'package:login_provider/src/providers/provider_usuario.dart';
import 'package:provider/provider.dart';

class LoginProviders extends StatelessWidget {
  LoginProviders({Key key}) : super(key: key);

  TextEditingController usrCntrollr = TextEditingController();
  TextEditingController psswdCntrollr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final superUsuarioInfo = Provider.of<UsuarioInfo>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Provider'),
        centerTitle: true,
        elevation: 20,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Text('Numero de Clicks!!!! '),
          FlutterLogo(
            size: 100,
          ),
          SizedBox(
            height: 20,
          ),
          _crearEmail(),
          SizedBox(
            height: 20,
          ),
          _crearPassword(),
          RaisedButton(
            child: Text('Login'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),
            //se envia el context para abajp
            onPressed: () async {
              if (usrCntrollr.text.isNotEmpty &&
                  psswdCntrollr.text.isNotEmpty &&
                  usrCntrollr.text == 'eddie' &&
                  psswdCntrollr.text == '123') {
                superUsuarioInfo.userInfo = usrCntrollr.text;
                Navigator.pushNamed(context, '/profile');
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Warning!"),
                        content: Text("Please fill Fields to granted access"),
                        actions: <Widget>[
                          new FlatButton(
                            child: Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              }
            },
          ),
          Text('user: eddie'),
          Text('psswd:123')

          //Text('$conteo',style: estiloTexto) //$ interpolacion string
        ],
      )
          // la mayoria de los Widgets solo pueden tener un child
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
      controller: usrCntrollr,
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
      controller: psswdCntrollr,
    );
  }
}
