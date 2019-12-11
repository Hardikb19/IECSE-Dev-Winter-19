import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new ItemScreen(), //calling chat_screen_item.dart
    );
  }
}
class ItemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("IECSE EVENTS"),
        backgroundColor: Colors.black,
      ),
      body: new Item(), //calling chat_item.dart
    );
  }
}
// Comment
class Item extends StatelessWidget{

  final leftSection = new CircleAvatar(
    backgroundImage: new AssetImage("lib/assets/pic1.png"),
    backgroundColor: Colors.lightGreen,
    radius: 24.0,
  );
final middleSection = new Expanded(
  child: new Container(
    padding: new EdgeInsets.only(left: 8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Cicada",
          style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
          ),),
        new Text("29/03/2019", style:
          new TextStyle(color: Colors.white),),
      ],
    ),
  ),
);
final rightSection = new Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      new Text("Online",
          style: new TextStyle(
            color: Colors.white,
          fontSize: 12.0),),
      
    ],
  );

  final leftSection1 = new CircleAvatar(
    backgroundImage: new AssetImage("lib/assets/pic2.jpeg"),
    backgroundColor: Colors.lightGreen,
    radius: 24.0,
  );
final middleSection1 = new Expanded(
  child: new Container(
    padding: new EdgeInsets.only(left: 8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Online Coding",
          style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
          ),),
        new Text("30/03/2019", style:
          new TextStyle(color: Colors.white),),
      ],
    ),
  ),
);
final rightSection1 = new Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      new Text("Online",
          style: new TextStyle(
            color: Colors.white,
          fontSize: 12.0),),
      
    ],
  );

final leftSection2 = new CircleAvatar(
    backgroundImage: new AssetImage("lib/assets/pic4.jpeg"),
    backgroundColor: Colors.lightGreen,
    radius: 24.0,
  );
final middleSection2 = new Expanded(
  child: new Container(
    padding: new EdgeInsets.only(left: 8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("Gambit",
          style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
          ),),
        new Text("28/03/2019", style:
          new TextStyle(color: Colors.white),),
      ],
    ),
  ),
);
final rightSection2 = new Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      new Text("6 PM",
          style: new TextStyle(
            color: Colors.white,
          fontSize: 12.0),),
      
    ],
  );
final leftSection3 = new CircleAvatar(
    backgroundImage: new AssetImage("lib/assets/pic5.jpeg"),
    backgroundColor: Colors.black,
    radius: 24.0,
  );
final middleSection3 = new Expanded(
  child: new Container(
    padding: new EdgeInsets.only(left: 8.0),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Text("HawkEye",
          style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
          ),),
        new Text("28/03/2019", style:
          new TextStyle(color: Colors.white),),
      ],
    ),
  ),
);

final rightSection3 = new Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      new Text("Online",
          style: new TextStyle(
            color: Colors.white,
          fontSize: 12.0),),
      
    ],
  );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    body: ListView(
      children: <Widget>[
        
        new Padding ( padding: new 
          EdgeInsets.all(23.0),
        child : new Container(
          padding: new 
          EdgeInsets.all(23.0),
          color: Colors.black,
          alignment: FractionalOffset.center,
          
          child: new Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          leftSection,
          middleSection,
         rightSection,
        ],
      ),
        ),
        ),
       new Padding ( padding: new 
          EdgeInsets.all(23.0),
        child : new Container(
          padding: new 
          EdgeInsets.all(23.0),
          color: Colors.black,
          alignment: FractionalOffset.center,
          
          child: new Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          leftSection1,
          middleSection1,
         rightSection1,
        ],
      ),
        ),
        ),
        new Container(
          padding: new 
          EdgeInsets.all(23.0),
          
          alignment: FractionalOffset.center,
          
          child: new Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Container(
                        child: new Image.asset(
                          'lib/assets/pic3.jpeg',
                          height: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
        ],
      ),
        ),
        
     new Padding ( padding: new 
          EdgeInsets.all(23.0),
        child : new Container(
          padding: new 
          EdgeInsets.all(23.0),
          color: Colors.black,
          alignment: FractionalOffset.center,
          
          child: new Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          leftSection2,
          middleSection2,
         rightSection2,
        ],
      ),
        ),
        ),
        new Padding ( padding: new 
          EdgeInsets.all(23.0),
        child : new Container(
          padding: new 
          EdgeInsets.all(23.0),
          color: Colors.black,
          alignment: FractionalOffset.center,
          
          child: new Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          leftSection3,
          middleSection3,
         rightSection3,
        ],
      ),
        ),
        ),
      ],
    ),
  );

  }

}
