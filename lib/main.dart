import 'package:flutter/material.dart';
import 'package:my_new_body/historial_page.dart';
import 'package:my_new_body/principal_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My New Body',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/principal_page',
      routes: {
        '/principal_page': (_) => PrincipalPage(),
        '/historial_page': (_) => HistorialPage(),
      },
    );
  }
}
