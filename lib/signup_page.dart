import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Importing Lottie package
import 'package:google_fonts/google_fonts.dart'; // Importing Google Fonts package

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reEnterPasswordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Set your desired app bar color here
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/signin.json', // Path to your Lottie animation file
                width: 300,
                height: 300,
                // Other options like animate, repeat, etc. can be specified here
              ),
              SizedBox(height: 20),
              _buildEmailField(),
              SizedBox(height: 10),
              _buildUsernameField(),
              SizedBox(height: 10),
              _buildPasswordField(),
              SizedBox(height: 10),
              _buildReEnterPasswordField(),
              SizedBox(height: 10),
              _buildPhoneNumberField(),
              SizedBox(height: 20),
              _buildSignUpButton(), // Centered sign-up button
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      width: 300,
      child: TextField(
        controller: _emailController,
        decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: Icon(Icons.email, color: Colors.blue),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget _buildUsernameField() {
    return Container(
      width: 300,
      child: TextField(
        controller: _usernameController,
        decoration: InputDecoration(
          hintText: 'Username',
          prefixIcon: Icon(Icons.person, color: Colors.blue),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      width: 300,
      child: TextField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(Icons.lock, color: Colors.blue),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }

  Widget _buildReEnterPasswordField() {
    return Container(
      width: 300,
      child: TextField(
        controller: _reEnterPasswordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Re-enter Password',
          prefixIcon: Icon(Icons.lock, color: Colors.blue),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return Container(
      width: 300,
      child: TextField(
        controller: _phoneNumberController,
        decoration: InputDecoration(
          hintText: 'Phone Number',
          prefixIcon: Icon(Icons.phone, color: Colors.blue),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        keyboardType: TextInputType.phone,
      ),
    );
  }

  Widget _buildSignUpButton() {
    return ElevatedButton(
      onPressed: () {
        // Perform sign-up logic here
        String email = _emailController.text;
        String username = _usernameController.text;
        String password = _passwordController.text;
        String reEnterPassword = _reEnterPasswordController.text;
        String phoneNumber = _phoneNumberController.text;
        print('Email: $email, Username: $username, Password: $password, Re-enter Password: $reEnterPassword, Phone Number: $phoneNumber');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // background color
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
        ),
      ),
      child: Text(
        'Sign Up',
        style: TextStyle(fontSize: 16.0, color: Colors.white), // set text color here
      ),
    );
  }
}
