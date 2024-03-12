import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharepreferences_task/home_page.dart';
import 'package:sharepreferences_task/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? isLogin = null;

  @override
  void initState(){
    getInstance();
    super.initState();
  }

  void getInstance() async {
    final pref =  await SharedPreferences.getInstance();
    isLogin = pref.getBool('login');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: (isLogin == false || isLogin == null) ? const LoginPage() : const HomePage(),
    );
  }
}
