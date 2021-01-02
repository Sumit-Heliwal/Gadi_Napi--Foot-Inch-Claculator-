import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:numberpicker/numberpicker.dart';

void main() {
  runApp(MyApp());
}

/*
S	S	S	S	S		U				U		M						M		I		T	T	T	T	T
S						U				U		M	M				M	M						T
S						U				U		M		M		M		M		I				T
S	S	S	S	S		U				U		M			M			M		I				T
				S		U				U		M						M		I				T
				S		U				U		M						M		I				T
S	S	S	S	S		U	U	U	U	U		M						M		I				T


*/

int lengthnum = 1;
int widthnum = 1;
int heightnum = 1;
int lengthdec = 1;
int widthdec = 1;
int heightdec = 1;
TextEditingController vol = new TextEditingController(text: "1");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gadi Napi',
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
        primarySwatch: Colors.blueGrey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gadi Napi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Drawer(
          // elevation: 1.5,
          child: Column(children: <Widget>[
        Expanded(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text(
                  'Gadi Napi',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                      color: Color(0xFFFFFFFF)),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                )),
            ListTile(
              title: Text(''),
              //leading: Icon(Icons.shopping_cart),
              onTap: () {},
            ),
            ListTile(
              title: Text(''),
              //leading: Icon(Icons.add_shopping_cart),
              onTap: () {},
            ),
            ListTile(
                title: Text(''),
                //leading: Icon(Icons.exit_to_app),
                onTap: () {})
          ],
        )),
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 0.1,
        ),
        Container(
            padding: EdgeInsets.all(10),
            height: 100,
            child: Text(
              "Devloped by LazY Devlopers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color(0xFF162A49)),
            )),
        Text(
          'Copyright ©2020, All Rights Reserved.',
          style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
              color: Color(0xFF162A49)),
        ),
      ])),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                new Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.all(color: Colors.cyanAccent),
                    children: [
                  TableRow(children: [
                    new Text(
                      "Length",
                      style: new TextStyle(
                          fontSize: 30.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 21,
                        initialValue: lengthnum,
                        onChanged: (newValue) =>
                            setState(() => lengthnum = newValue)),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 11,
                        initialValue: lengthdec,
                        onChanged: (newValue) =>
                            setState(() => {lengthdec = newValue})),
                  ]),
                  TableRow(children: [
                    new Text(
                      "Width",
                      style: new TextStyle(
                          fontSize: 30.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 21,
                        initialValue: widthnum,
                        onChanged: (newValue) =>
                            setState(() => widthnum = newValue)),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 11,
                        initialValue: widthdec,
                        onChanged: (newValue) =>
                            setState(() => {widthdec = newValue})),
                  ]),
                  TableRow(children: [
                    new Text(
                      "Height",
                      style: new TextStyle(
                          fontSize: 30.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w200,
                          fontFamily: "Roboto"),
                    ),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 21,
                        initialValue: heightnum,
                        onChanged: (newValue) =>
                            setState(() => heightnum = newValue)),
                    new NumberPicker.integer(
                        minValue: 0,
                        maxValue: 11,
                        initialValue: heightdec,
                        onChanged: (newValue) =>
                            setState(() => {heightdec = newValue})),
                  ]),
                ])),
            new RaisedButton(
                onPressed: calculate,
                color: const Color(0xFFe0e0e0),
                splashColor: Color(0xFFFF5555),
                child: new Text(
                  "Calculate",
                  style: new TextStyle(
                      fontSize: 30.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )),
            new Text(
              "${vol.text} cft",
              style: new TextStyle(
                  fontSize: 30.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            )
          ],
        ),
      ),
    );
  }

  void calculate() {
    setState(() {
      vol.text = (((((heightnum * 12) + heightdec) *
                      ((lengthnum * 12) + lengthdec) *
                      ((widthnum * 12) + widthdec)) /
                  1728)
              .roundToDouble())
          .round()
          .toString();
    });

    //print(vol.text);
  }
}
