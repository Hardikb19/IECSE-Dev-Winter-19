import 'package:flutter/material.dart';

void main() => runApp(AppTask_1());

class AppTask_1 extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task_1:Event Page',
      home: EventPage(title: 'Page_Events'),
    );
  }
}

class EventPage extends StatefulWidget 
{
  EventPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> 
{
  
  Widget tile({String title,String logo,String date, String venue ,String time,BuildContext context})
  {
      Size size = MediaQuery.of(context).size;

      return Container(
        height: 80,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(children: 
          <Widget>[
            Container(
              width: size.width / 4,
              child: Image.asset(logo,height: 50.0)
            ),
            Container(
              width: size.width / 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text(title,style: TextStyle(color: Colors.white)),
                  Divider(height: 2.0,),
                  Text(date,style: TextStyle(color: Colors.white)),
                  Text(venue,style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Container(
              width: size.width / 7,
              child: Text(time,style: TextStyle(color: Colors.white))
            )
          ],
        )
      );
  }


  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text("IECSE Events"),
      ),
      body: Center(
        child: Column(
            children: <Widget>[
            tile(context: context,date: "29/03/19",logo: "cicada.png",time: "Online",title: "Cicada",venue: ""),
            tile(context: context,date: "30/03/19",logo: "oc.png",time: "Online",title: "Online Coding",venue: ""),
            Image.asset("logo.png",height:200),
            tile(context: context,date: "28/03/19",logo: "gambit.png",time: "6 PM",title: "Gambit",venue: "NLH 402"),
            tile(context: context,date: "28/03/19",logo: "hawkeye.png",time: "Online",title: "Hawkeye",venue: ""),
          ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
