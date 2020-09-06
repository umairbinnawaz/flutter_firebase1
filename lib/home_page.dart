import 'package:flutter/material.dart';
import 'package:sign_app/auth.dart';
import 'auth.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onsignedOut});
  final BaseAuth auth;
  final VoidCallback onsignedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onsignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Well Come "),
        actions: <Widget>[
          new FlatButton(
            child: new Text('Log Out',
                style: new TextStyle(fontSize: 17.0, color: Colors.white)),
            onPressed: _signOut,
          )
        ],
      ),
      body: new Container(
        child: new Center(
          child: new Text("Well come", style: new TextStyle(fontSize: 32.0)),
        ),
      ),
    );
  }
}
