import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Bus_app'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           Column(children: [
             Container(padding:EdgeInsets.all(10), child: TextField(
  
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Username',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),
SizedBox(height:30),
          
          Container(padding:EdgeInsets.all(10), child: TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),
           ],),
             
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
children: <Widget>[
  RaisedButton(onPressed: (){    Navigator.pushNamed(context, '/third');}, 
  color: Colors.red[400], child: Text('Sign in',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
RaisedButton(onPressed: (){}, color: Colors.red[400], child: Text('Sign Up',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
],),
                ],
            ),
            
    
        ),
      );
  }
}