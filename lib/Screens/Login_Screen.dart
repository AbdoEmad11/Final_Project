import 'package:bookapp/widgets/login_form.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20.0),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Image.asset('assets/logo.png',width: 200,height: 200,), // Corrected path
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const LoginForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
