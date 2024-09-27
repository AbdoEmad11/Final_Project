import 'package:bookapp/widgets/Container.dart'; // Assuming this is a valid import
import 'package:flutter/material.dart';
import '../Screens/Signup_Screen.dart'; // Assuming this is the correct import

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Log In",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.alternate_email),
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Circular border radius
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Circular border when focused
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0), // Circular border radius
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Circular border radius for button
              ),
            ),
            onPressed: () {
              // Add login logic here
            },
            child: const Text(
              "Log In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            child: const Text(
              "Don't have an account? Sign up here",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>  SignUp(), // Add SignUp screen here
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
