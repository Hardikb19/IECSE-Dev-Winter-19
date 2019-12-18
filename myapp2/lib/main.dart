import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        appBar: AppBar(
          backgroundColor:Color(0xff121212),
          leading: Icon(
            Icons.cloud,
            color: Colors.white,
            size:30,
          ),
          title: Text('Weather app'),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Center(
                child: Stack(
                  alignment:AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      margin: EdgeInsets.all(5),
                      child: CircularProgressIndicator(
                        value:0.65,
                        strokeWidth: 6.0,
                        valueColor : AlwaysStoppedAnimation(Colors.green[400]),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      margin: EdgeInsets.all(5),
                      child: CircularProgressIndicator(
                        value:0.425,
                        strokeWidth: 6.0,
                        valueColor : AlwaysStoppedAnimation(Colors.red[400]),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      margin: EdgeInsets.all(5),
                      child: CircularProgressIndicator(
                        value:0.64,
                        strokeWidth: 6.0,
                        valueColor : AlwaysStoppedAnimation(Colors.blue[400]),
                      ),
                    ),
                    Container(
                      height:150,
                      width:150,
                      padding:EdgeInsets.all(30),
                      margin:EdgeInsets.all(5),
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '23°C',
                            style: TextStyle(
                              fontSize: 39,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Humidity: ',
                                style: TextStyle(
                                  fontSize: 11,
                                  color:Colors.blue[400],
                                  ),
                              ),
                              Text(
                                '64',
                                style: TextStyle(fontSize: 11,color:Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Min Temp: ',
                                style: TextStyle(fontSize: 11,color:Colors.red[400]),
                              ),
                              Text(
                                '17',
                                style: TextStyle(fontSize: 11,color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Max Temp: ',
                                style: TextStyle(fontSize: 11,color:Colors.green[400]),
                              ),
                              Text(
                                '26',
                                style: TextStyle(fontSize: 11,color:Colors.white),
                              ),
                            ],
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Text(
                'Bangalore',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}