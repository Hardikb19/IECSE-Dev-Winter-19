import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Task 1',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget 
{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{

  Widget tile({String icon,String title,String date,String time="Online",String venue=""})
  {
    return Container(
      height: 80.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
      ),
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 10.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
            child: Image.asset(icon,height: 50,),
            width: 70,
          ),
          //Center(
            //child: 
            Container(
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:  CrossAxisAlignment.center,
                children: <Widget>[
                  Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:20.0)),
                  Divider(height: 4.0,),
                  Text(date,style: TextStyle(color: Colors.white70,fontSize: 15.0),),
                  Text(venue,style: TextStyle(color: Colors.white70,fontSize: 13.0),)
                ],                
              ),
            ),
            Container(
              child: Text(time,style: TextStyle(color: Colors.white70)),
            )
          //)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("IECSE Events"),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
                tile(icon:"gambit.png",title: "Gambit",venue: "NLH 777",date: "13/06/19",time: "6PM"),
                tile(icon:"cicada.png",title: "Cicada",date: "13/06/19"),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child:Image.asset("logo.png",height: 150.0,)
                ),
              tile(icon:"hawkeye.png",title: "Hawkeye",date: "14/06/19"), 
              tile(icon:"oc.png",title: "Online Coding",date: "15/06/19"),
            ],
          )
        )
      ),
    );
  }
}
