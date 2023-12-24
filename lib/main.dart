import 'package:flutter/material.dart';
import 'package:food_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        primarySwatch: Colors.red,

      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
          primarySwatch: Colors.purple,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.tealAccent,
          ),
          iconTheme: IconThemeData(
            color: Colors.pink,
          )
      ),
      home: SignIn(),
    );
  }
}
