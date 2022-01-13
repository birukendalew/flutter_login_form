import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
         child:Container(
           decoration: BoxDecoration(
             color: Colors.grey,
           ),
          child: ListView(

            children: [
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person,color: Colors.indigo,),
                  labelText: "name",
                  enabledBorder: myinputborder(),
                  focusedBorder: myfocusborder(),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.indigo,),
                  labelText: "Email",
                  enabledBorder: myinputborder(),
                  focusedBorder: myfocusborder(),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(

                  decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock,color: Colors.indigo,),
                labelText: "Password",
                enabledBorder: myinputborder(),
                focusedBorder: myfocusborder(),
              ),

                obscureText: true,
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
              RaisedButton(
                  onPressed:(){},
                  child: Text(
                    'login',

                  ),
color: Colors.amberAccent,
              ),
            ],
          ),
        ]
          ),
        )
      ),
      )
    );
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.greenAccent,
          width: 3,
        ));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ));
  }
}
