import 'package:flutter/material.dart';
class UpdateBus extends StatefulWidget {
  const UpdateBus({ Key? key }) : super(key: key);

  @override
  _UpdateBusState createState() => _UpdateBusState();
}

class _UpdateBusState extends State<UpdateBus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Bus_AppfAdmin'),
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
            Text(
              'Update Bus Route',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)
            ),
            SizedBox(height:20),
            Column(
                children: <Widget>[
                  Container(padding:EdgeInsets.all(10), child: TextField(

  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Bonnet ID',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),

SizedBox(height: 10,),
Container(padding:EdgeInsets.all(10), child: TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'From',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),

SizedBox(height: 10,),
Container(padding:EdgeInsets.all(10), child: TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'To',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),
SizedBox(height: 10,),
Container(padding:EdgeInsets.all(10), child: TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Stops',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ),
) ,),
          ],
            ),
            SizedBox(height:20),
            RaisedButton(onPressed: (){
            Navigator.pushNamed(context, '/second');
          }, color: Colors.red[400], child: Text('Submit',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
            
          ],
        ),
      ),
      );
  }
}
