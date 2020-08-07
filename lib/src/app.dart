import 'package:flutter/material.dart';
import 'package:login_provider/src/providers/provider_usuario.dart';
import 'package:login_provider/src/screens/login_screen.dart';
import 'package:login_provider/src/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    //context contiene informacion
    return ChangeNotifierProvider(
      child: MaterialApp(
        routes: {'/profile': (context) => Profile()},
        debugShowCheckedModeBanner: false,
        home: Center(
          child: LoginProviders(),
        ),
        title: 'Login Provider',
      ),
      create: (context) => UsuarioInfo(),
    );
  }
}
