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
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10),
              color: Colors.black87,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Image.asset(
                    'assets/cicada.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Text(
                    'Cicada-29/03/2019',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                ],
              ),
            ),
           
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              color: Colors.black87,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/oc.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Text(
                    'Online Coding - 30/03/2019',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10),
              color: Colors.black87,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Image.asset(
                    'assets/gambit.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Text(
                    'Gambit-28/03/19',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(10),
              color: Colors.black87,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Image.asset(
                    'assets/hawkeye.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Hawkeye',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                      Text(
                        '28/03/2019',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize:15,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

