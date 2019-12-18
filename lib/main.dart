import 'package:flutter/material.dart';
import './util/utils.dart' as util;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main() => runApp(FavoCity());

class FavoCity extends StatefulWidget {
  @override
  Favocitystate createState() => Favocitystate();
}

class Favocitystate extends State<FavoCity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.asset('images/ok1.png'),
          centerTitle: true,
          title: Text(
            "Weatherr",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Changecity()),
                  );
                })
          ],
        ),
        body: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 1.0),
                  child: updatetemp("perth"),
                ),
                Container(
                    margin: EdgeInsets.only(top: 100.0, left: 60.0),
                    child: maxtemp("perth")),
                Container(
                    margin: EdgeInsets.only(top: 100.0, left: 60.0),
                    child: mintemp("perth")),
                Container(
                    margin: EdgeInsets.only(top: 70.0, left: 30.0),
                    child: humid("perth")),
              ],
            )),
      ),
    );
  }

  Future<Map> getweather(String appID, String city) async {
    String apiUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appID}&units=metric';
    http.Response response = await http.get(apiUrl);
    return jsonDecode(response.body);
  }

  Widget updatetemp(String city) {
    return FutureBuilder(
        future: getweather(util.appID, city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 190.0, left: 1.0),
                    child: Text(
                      content['main']['temp'].toString() + "°C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 68.0,
                        fontFamily: 'Electrolize',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 1.0, bottom: 1.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Max :',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontFamily: 'Electrolize',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: content['main']['temp_max'].toString() + "°C",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Electrolize',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                      )),
                  Container(
                      margin: EdgeInsets.only(bottom: 1.0),
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text: 'Min :',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18.0,
                              fontFamily: 'Electrolize',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: content['main']['temp_min'].toString() + "°C",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Electrolize',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]),
                      )),
                  Container(
                      child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'Humidity :',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18.0,
                          fontFamily: 'Electrolize',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: content['main']['humidity'].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Electrolize',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]),
                  )),
                  Container(
                      margin: EdgeInsets.only(top: 150.0, left: 30.0),
                      child: ListTile(
                        title: Text(
                          " " + content['name'].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.0,
                            fontFamily: 'Girassol',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
            );
          }
        });
  }

  Future<Map> maxget(String appID, String city) async {
    String apiUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appID}&units=metric';
    http.Response response = await http.get(apiUrl);
    return jsonDecode(response.body);
  }

  Widget maxtemp(String city) {
    return FutureBuilder(
        future: maxget(util.appID, city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return Container(
                child: SizedBox(
                    width: 300.0,
                    height: 300.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      strokeWidth: 10.0,
                      value: content['main']['temp_max'] / 50.0,
                    )));
          }
        });
  }

  Future<Map> minget(String appID, String city) async {
    String apiUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appID}&units=metric';
    http.Response response = await http.get(apiUrl);
    return jsonDecode(response.body);
  }

  Widget mintemp(String city) {
    return FutureBuilder(
        future: minget(util.appID, city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return Container(
                child: SizedBox(
                    width: 300.0,
                    height: 300.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      strokeWidth: 10.0,
                      value: content['main']['temp_min'] / 50.0,
                    )));
          }
        });
  }

  Future<Map> humidget(String appID, String city) async {
    String apiUrl =
        'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=${util.appID}&units=metric';
    http.Response response = await http.get(apiUrl);
    return jsonDecode(response.body);
  }

  Widget humid(String city) {
    return FutureBuilder(
        future: humidget(util.appID, city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          if (snapshot.hasData) {
            Map content = snapshot.data;
            return Container(
                child: SizedBox(
                    width: 360.0,
                    height: 360.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      strokeWidth: 10.0,
                      value: content['main']['humidity'] / 100.0,
                    )));
          }
        });
  }
}

class Changecity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search.."),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
        ),
        child: Stack(
          children: <Widget>[
            Container(
              child: Text("wassup"),
            )
          ],
        ),
      ),
    );
  }
}
