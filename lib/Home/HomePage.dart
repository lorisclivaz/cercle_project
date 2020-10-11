import 'package:cercle_project/authentication/AuthenticationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Home page'),
            RaisedButton(
              onPressed: (){
                context.read<AuthenticationService>().signOut();
              },
              child: Text('Sign Out'),
            )
          ],
        )
      ),
    );
  }
}
