import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharepreferences_task/login_page.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('HOME'),),
           body: Center(
            child: ElevatedButton(onPressed: () async {
        final SharedPreferences preferences =
            await SharedPreferences.getInstance();
        await preferences
            .setBool('login', false)
            .then((_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ));
      }, child:const Text("LOGIN")),
                      ),
       );
  }
}