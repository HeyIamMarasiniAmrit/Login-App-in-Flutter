import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  // ignore: use_key_in_widget_constructors
  const HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Column(
        children: [
          SizedBox(height: 25),
          Center(
            child: Text("welcome$username", style: TextStyle(fontSize: 25)),
          ),
          SizedBox(height: 250),
          Text(
            '#Build By Amrit Marasini#',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
