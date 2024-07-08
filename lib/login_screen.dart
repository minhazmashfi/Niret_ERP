import 'package:back_pressed/back_pressed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:niret_app/panel_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(context) {
    String username = '';
    String password = '';
    return OnBackPressed(
      perform: (){},
      child: Scaffold(
        appBar: AppBar(
          title: Text('Niret Login Page',
              style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
          backgroundColor: const Color.fromARGB(255, 255, 138, 5),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 3, 15, 124),
                Color.fromARGB(255, 34, 84, 194)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Niret IT Login',
                      style: GoogleFonts.ubuntuMono(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Form(
                      child: Column(
                    children: [
                 
                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.acme(color: Colors.white),
                        decoration: InputDecoration(
                          labelStyle:
                            GoogleFonts.acme(color: Colors.white, fontSize: 18),
                          labelText: 'UserName',
                          hintText: 'Enter Username',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String user) {
                          username = user;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.acme(color: Colors.white),
                        decoration: InputDecoration(
                          focusColor: Colors.brown,
                          labelStyle:
                            GoogleFonts.acme(color: Colors.white, fontSize: 18),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String pass) {
                          password = pass;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () async {
                            showDialog(context: context, builder: (context)=>
                            Center(child: CircularProgressIndicator(backgroundColor:Colors.amber)));
                            await Future.delayed(Duration(seconds:1));
                             
                            if (username.isNotEmpty && password.isNotEmpty) {
                              
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PanelPage()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 101, 41),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(20),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )),
                ],
              ),
            )),
      ),
    );
  }
}
