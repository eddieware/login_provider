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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/89505307_2923676754359456_8811794812756819968_n.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_eui2=AeEHFe2ZkGpXFG5PiF5o63P6I5X4tzZiv-Ujlfi3NmK_5QThRhVtgEESM0J7RGSTbMnGlBn2BMR32Wfn_9bloTg0&_nc_ohc=3AVkAPkE7ckAX98PpKs&_nc_ht=scontent-qro1-1.xx&oh=ba98746c45f3140a4da07437b9cfdea1&oe=5F545C7D'),
                radius: 30.0,
              ),
            ),
            Text(
              'Bienvenido ${profileProvider.userInfo}',
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ));
  }
}
