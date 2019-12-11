import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff000000),
        appBar: AppBar( 
          title: Text('IECSE Events'),
          centerTitle: true,
          backgroundColor: Color(0xff333333),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15),
                color: Color(0xff1f1f1f),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Image.asset(
                    'assets/cicada.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Cicada',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                      Text(
                        '29/03/2019',
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
           
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15),
                color: Color(0xff1f1f1f),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/oc.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Online Coding',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                      Text(
                        '30/03/19',
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
            Container(
              child: Image.asset(
                'assets/logo.png',
                height: 250.0,
                width: 250.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15),
                color: Color(0xff1f1f1f),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Image.asset(
                    'assets/gambit.png',
                    height:80.0,
                    width:80.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'Gambit',
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
                      Text(
                        'NLH 402',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:15,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '6 PM',
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
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15),
                color: Color(0xff1f1f1f),
              ),
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
            )
            
          ],
        ),
      ),
    );
  }
}

