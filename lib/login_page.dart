import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Importing Lottie package
import 'package:google_fonts/google_fonts.dart'; // Importing Google Fonts package
import 'package:foodapp/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 255, 255, 255), // Set your desired app bar color here
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/food.json', // Path to your Lottie animation file
                width: 300,
                height: 300,
                // Other options like animate, repeat, etc. can be specified here
              ),
              SizedBox(height: 20),
              _buildUsernameField(),
              SizedBox(height: 10),
              _buildPasswordField(),
              SizedBox(height: 10),
              _buildForgotPasswordLink(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _login(); // Call the login function when the button is pressed
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue), // background color
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
                  'Login',
                  style: GoogleFonts.lobsterTwo(
                    // Apply Lobster Two font to the button text
                    textStyle: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the sign-up page when the sign-up button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green), // background color
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
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white), // set text color here
                ),
              ),
            ],
          ),
        ),
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
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        onSubmitted: (_) =>
            _login(), // Call the login function when "Enter" is pressed
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
          contentPadding:
              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        onSubmitted: (_) =>
            _login(), // Call the login function when "Enter" is pressed
      ),
    );
  }

  Widget _buildForgotPasswordLink() {
    return GestureDetector(
      onTap: () {
        // Add navigation or action for "Forgot Password?" link
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  void _login() {
    // Perform login authentication logic here
    String username = _usernameController.text;
    String password = _passwordController.text;
    print('Username: $username, Password: $password');
  }

  Widget _buildSignUpButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpPage()),
        );
      },
      child: Text('Sign Up'),
    );
  }
}
