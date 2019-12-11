// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Color c = const Color(0x000000);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IECSE Events',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '                      IECSE Events',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black,
        ), 
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                constraints: BoxConstraints(
                  maxHeight: 80,
                  minHeight: 20,
                  maxWidth: 350,
                  minWidth: 50,
                ),
                decoration: new BoxDecoration(
                  color: Colors.black,
                  border: new Border.all(
                    color: Colors.white,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Image(
                      image: AssetImage('assets/cicada.png'),
                      height: 70,
                      width: 70,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Cicada',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '29/03/2019',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0
                    ),
                  ),
                ],
              ),
              ),
              
              Container(
                constraints: BoxConstraints(
                  maxHeight: 80,
                  minHeight: 20,
                  maxWidth: 350,
                  minWidth: 50,
                ),
                decoration: new BoxDecoration(
                  color: Colors.black,
                  border: new Border.all(
                    color: Colors.white,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Image(
                    image: AssetImage('assets/oc.png'),
                    height: 70,
                    width: 70,
                  ),
                  
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Online Coding',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '30/03/2019',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),

                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0                      
                    )
                  )
                ],
              ),
              ),
              
              new Image(
                image: AssetImage('assets/logo.png'),
                height: 140,
                width: 140,
              ),

              Container(
                constraints: BoxConstraints(
                  maxHeight: 80,
                  minHeight: 20,
                  maxWidth: 350,
                  minWidth: 50,
                ),
                decoration: new BoxDecoration(
                  color: Colors.black,
                  border: new Border.all(
                    color: Colors.white,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Image(
                    image: AssetImage('assets/gambit.png'),
                    height: 70,
                    width: 70,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Gambit',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '28/03/2019',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  
                  Text(
                    '6 P.M.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0                      
                    )
                  )
                ],
              ),
              ),
              
            Container(
              constraints: BoxConstraints(
                  maxHeight: 80,
                  minHeight: 20,
                  maxWidth: 350,
                  minWidth: 50,
                ),
              decoration: new BoxDecoration(
                  color: Colors.black,
                  border: new Border.all(
                    color: Colors.white,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Image(
                    image: AssetImage('assets/hawkeye.png'),
                    height: 70,
                    width: 70,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Hawkeye',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          '28/03/2019',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0                      
                    )
                  )
                ],
              ),
            )
            
            ],
          )
          )
        )
        );
  }
}