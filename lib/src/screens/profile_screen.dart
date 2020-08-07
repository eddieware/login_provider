import 'package:flutter/material.dart';
import 'package:login_provider/src/providers/provider_usuario.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<UsuarioInfo>(context);

    return Scaffold(
        appBar: AppBar(title: Text('Welcome to your Console')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Bienvenido ${profileProvider.userInfo}',
              style: TextStyle(fontSize: 22.0),
            ),
            Row(
              children: <Widget>[],
            )
          ],
        ));
  }
}
