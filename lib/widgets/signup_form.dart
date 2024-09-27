import 'package:bookapp/Screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/widgets/Container.dart'; // Assuming this is a valid import

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Full Name TextFormField
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              hintText: "Full Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Email TextFormField
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.alternate_email),
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Password TextFormField
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock),
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),

          // Confirm Password TextFormField
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_outline),
              hintText: "Confirm Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(color: Colors.blue, width: 2.0),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 20),

          // Sign Up Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              // Add sign-up logic here
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Already have an account? Login Button
          TextButton(
              child: const Text(
                "Already have an account? Log in here",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(), // Add SignUp screen here
                  ),
                );
              }),
        ],
      ),
    );
  }
}
