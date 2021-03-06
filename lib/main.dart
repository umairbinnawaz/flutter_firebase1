import 'package:flutter/material.dart';
import 'package:sign_app/auth.dart';
import 'auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'root_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// I changed this line
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Login demo',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: RootPage(
        auth: new Auth(),
      ),
    );
  }
}
