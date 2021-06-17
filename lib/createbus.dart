import 'package:flutter/material.dart';
class Createbus extends StatefulWidget {
  const Createbus({ Key? key }) : super(key: key);

  @override
  _CreatebusState createState() => _CreatebusState();
}

class _CreatebusState extends State<Createbus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('BUS APP'),
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
              'Create Bus',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)
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
Container(padding:EdgeInsets.all(10), child:DropdownButtonFormField<String>(
           decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Is Bus Running?',
    focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
    
  ), items: ["Yes", "No"]
                .map((label) => DropdownMenuItem(
                      child: Text(label),
                      value: label,
                    ))
                .toList(),
            onChanged: (_) {},
          ),),

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
          }, color: Colors.red[400], child: Text('Submit',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
            
          ],
        ),
      ),
      );
  }
}
