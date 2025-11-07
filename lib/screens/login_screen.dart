import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;
  @override
  Widget build(BuildContext context) {
    final usernameFeild = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Usernamer",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final passwordFeild = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == "Amrit" && password == "pass1234") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen(username)),
            );
          } else {
            print("login failed");
          }
        },
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.supervised_user_circle, size: 150),
                    SizedBox(height: 100),
                    usernameFeild,
                    SizedBox(height: 10),
                    passwordFeild,
                    SizedBox(height: 10),
                    myLoginButton,
                    SizedBox(height: 25),
                    Text(
                      '#Build By Amrit Marasini#',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
