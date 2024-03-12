import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharepreferences_task/home_page.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('LOGIN'),),
           body: Center(
            child: ElevatedButton(onPressed: () async {
        final SharedPreferences preferences =
            await SharedPreferences.getInstance();
        await preferences
            .setBool('login', true)
            .then((_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ));
      }, child:const Text("HOME")),
                      )
       );
  }
}