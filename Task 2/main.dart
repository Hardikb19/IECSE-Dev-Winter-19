import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(App());

class App extends StatefulWidget{
  @override
  AppState createState() => AppState();
}

class AppState extends State<App>
{
  
  final apiID ="5546569946b68dfac911278448b6130f";
  final defaultCity = "Kolkata";

  void showStuff() async {
    Map data = await getWeather(apiID,defaultCity);
    print(data.toString());
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        title: 'Klimatic - Know your Weather',
        debugShowCheckedModeBanner: false,
        home: Scaffold(primary: true,
        appBar: AppBar(
          title: Text('Klimatic',
            style: TextStyle( fontFamily: "Quantico"),),
          leading: Icon(Icons.cloud),
        ),

        body: ListView(
            children: <Widget>[
             	displayData(),

              new Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(0.0, 40.9, 20.9, 0.0),
                child: new Text('$defaultCity',
                  style: cityStyle(),),
              ),
            ],
          ),
      ),
      theme: ThemeData.dark(),
    );
  }
  
  Widget displayData()
  {
    return new FutureBuilder(future: getWeather(apiID, defaultCity) , 
                  builder: (BuildContext context, AsyncSnapshot<Map> snapshot){

                    if(snapshot.hasData){
                      Map content = snapshot.data;
                      return new Container(
                        margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                                      Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:<Widget>[
                                            Text(content['main']['temp'].toString() + "°C",style: new TextStyle( fontFamily: "Quantico",color: Colors.white,fontSize: 49.9, fontStyle: FontStyle.normal, fontWeight: FontWeight.w500),),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children:<Widget>[Text('Humidity:',style: TextStyle( fontFamily: "Quantico",color: Colors.cyan),),Text(content['main']['humidity'].toString(),style: TextStyle(fontFamily: "Quantico"),)]
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children:<Widget>[
                                                Text('Max. Temp:\t',style: TextStyle( fontFamily: "Quantico",color: Colors.red)),Text(content['main']['temp_max'].toString(),style: TextStyle(fontFamily: "Quantico"),)
                                                ]
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children:<Widget>[
                                                Text('Min. Temp:\t',style: TextStyle( fontFamily: "Quantico",color: Colors.green)),Text(content['main']['temp_min'].toString(),style: TextStyle(fontFamily: "Quantico"),)
                                                ]
                                            )
                                          ]
                                      ),
                                      SizedBox(
                                        height: 230.0,
                                        width: 230.0,
                                        child:CircularProgressIndicator(
                                          value: content['main']['humidity']/100,
                                          valueColor: AlwaysStoppedAnimation(Colors.cyan),
                                          strokeWidth: 8.0,
                                      )),
                                      SizedBox(
                                        height: 280.0,
                                        width: 280.0,
                                        child:CircularProgressIndicator(
                                          value: content['main']['temp_min']/(content['main']['temp_min']+10),
                                          valueColor: AlwaysStoppedAnimation(Colors.red),
                                          strokeWidth: 8.0,
                                      )),
                                      SizedBox(
                                        height: 330.0,
                                        width: 330.0,
                                        child:CircularProgressIndicator(
                                          value: content['main']['temp_max']/(content['main']['temp_max']+5),
                                          valueColor: AlwaysStoppedAnimation(Colors.green),
                                          strokeWidth: 8.0,
                                      ))

                          ],
                        )
                  );
                } else {
                  return new Container();
                }
              });
  }
  Future<Map> getWeather(String apiId, String city) async {
      String apiURL = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiId&units=metric';
      http.Response response = await http.get(apiURL);
      print(json.decode(response.body));
      return json.decode(response.body);
  }

}

TextStyle cityStyle(){
  return new TextStyle( fontFamily: "Quantico",
    color: Colors.white,
    fontSize: 60,
  );
}
