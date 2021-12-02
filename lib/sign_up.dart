import 'package:flutter/material.dart';
import 'package:project1/sign_in.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  //key
  final control = TextEditingController();

  //Text Editing Controller
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          " Home page",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              child: Text(
                "Sign Up Here",
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Enter Name",
                    hintText: "Name",
                    border: OutlineInputBorder()),
                controller: control,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Enter Email",
                    hintText: "Email",
                    border: OutlineInputBorder()),
                controller: control,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "Phone Number",
                    border: OutlineInputBorder()),
                controller: control,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    border: OutlineInputBorder()),
                controller: control,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: RaisedButton(
              color: Colors.tealAccent,
                child: Text("Sign up", style: TextStyle(fontSize: 16.0),),
                onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
                }),
          )
        ],
      ),
    );
  }
}
