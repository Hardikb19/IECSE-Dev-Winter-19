import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('IECSE Events'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Container(
              child:Row(
                children: <Widget>[
                  Image.asset('assets/cicada.png'),
                  Text('Cicada-29/03/2019'),
                  Text('Online')
                ],
              ),
            ),
           
            Container(
              child:Row(
                children: <Widget>[
                  Image.asset('assets/oc.png'),
                  Text('Online Coding - 30/03/2019'),
                  Text('Online')
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

