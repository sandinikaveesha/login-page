// ignore_for_file: prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:getwidget/getwidget.dart';



void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), 
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   bool _obscureText = true;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        title: Text('Sign in',
        style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 24.0, 
          fontWeight: FontWeight.w700),
        ),

        backgroundColor: Color(0xff005EB8),
        elevation:0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {},
          ),
          bottom:PreferredSize(
            child: Container(), 
            preferredSize: Size.fromHeight(30.0))     
      ),

      body: SingleChildScrollView(
        child:   Column(
            mainAxisAlignment:MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Padding(padding:  const EdgeInsets.only(bottom:94, top: 113),
              child: Image(
                image: AssetImage('images/ACQUEST-LOGO.png'),
                width: 167.0,
                height: 42.0, 
                alignment: Alignment.center, 
                ),
              ),
              

              Padding(padding: const EdgeInsets.only(bottom: 77, left: 36, right: 52), 
              child: Text('Please sign in with the credentials shared by the school',
                style: TextStyle(
                fontSize: 18.0, 
               fontFamily: 'Roboto',
                ),  
                //textAlign: TextAlign.center,
            )
              ),

              Padding(padding: const EdgeInsets.only(bottom:29, left: 29, right:28),
              child:TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFAFAFA) ,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                     width: 1,
                      color: Color(0xff000000)
                    ),

                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    )
                  ),

                    hintText: 'User Name',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    )      
                )  
              )
              ),
              
              Padding(padding: const EdgeInsets.only(bottom: 36, left: 29, right: 28),
              child:TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffFAFAFA) ,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                     width: 1,
                      color: Color(0xff000000)
                    ),

                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    )
                  ),

                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),  
                    suffixIcon:GestureDetector(
                      onTap: () {
                        setState(() {
                        _obscureText = !_obscureText;  
                        });
                      },
                      child: Icon(_obscureText? Icons.visibility: Icons.visibility_off),
                    ),
                   
                ),
                obscureText: _obscureText,
                   
              ) 
              ),
               

      
              Padding(padding: const EdgeInsets.only(bottom:39,left: 37, right: 51),
              child:InkWell( child:Text("Forgot password or user name? Click here! ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0, 
                  fontFamily: 'Roboto',
                ),
                
              ),
              onTap: () => launch('#')
              ),
              ),
              
              Padding(padding: const EdgeInsets.only(bottom:72, left: 83, right: 83),
              child: SizedBox(
                width: 209.0,
                height: 53.0,
                child: RaisedButton(
                  color: Color(0xff005eb8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  child: Text("Sign in", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight. w900,
                    //backgroundColor: Color(0xff005eb8),
                  ),
                  ),
                  onPressed:() {} ,
                  //padding: EdgeInsets.symmetric(vertical:53, horizontal: 209 ),
                ),
              ) 
                
                
              ),

            ],

            
          )
      
      ),
      
    );
  }
}
