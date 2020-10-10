import 'package:flutter/material.dart';
import '../Home/HomePage.dart';
import '../main.dart';
import 'LoginScreen.dart';

class Landinpage extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    // ignore: deprecated_member_use
    return StreamBuilder<FirebaseUser>(
      // ignore: deprecated_member_use
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.active){
          // ignore: deprecated_member_use
          FirebaseUser user = snapshot.data;
          if(user == null){
            print('Le user est null');
            return LoginScreen();
          }
          print('Le user est déjà connecté');
          return HomePage();
        }else{
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
