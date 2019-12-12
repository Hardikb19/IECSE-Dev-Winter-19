import 'package:flutter/material.dart';
//import 'package:flutter/material.dart' as prefix0;
//import 'package:task1/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //primarySwatch: Colors.pink[900]
      ),
      home: EventPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    appBar: AppBar(
      title: Text('IECSE Events'),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent[400],
    ),
    body: home_page(),
    );
  }
}

class home_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image.asset('logo.png', height: 190,),
          alignment: Alignment.topCenter,
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.redAccent[700],
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('cicada.png', alignment: Alignment.topCenter, height: 125,),
                    ),
                    Container(
                      child: Text('Cicada', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('29/03/19'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('Online'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.yellow[900],
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('oc.png', alignment: Alignment.topCenter, height: 125,),
                    ),
                    Container(
                      child: Text('Online Coding', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('30/03/19'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('Online'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.lightGreen[900],
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('gambit.png', alignment: Alignment.topCenter, height: 125,),
                    ),
                    Container(
                      child: Text('Gambit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('6 PM  28/03/19'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('NLH 402'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.deepPurpleAccent[400],
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('hawkeye.png', alignment: Alignment.topCenter, height: 125,),
                    ),
                    Container(
                      child: Text('Hawkeye', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('28/03/19'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          Container(
                            child: Text('Online'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Image.asset('logo-white.png', height: 60,),
          alignment: Alignment.bottomCenter,
        ),
      ],
    );
  }
}