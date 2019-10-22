import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RomansApp(),
    );
  }
}

class RomansApp extends StatefulWidget {
  @override
  _RomansAppState createState() => _RomansAppState();
}

class _RomansAppState extends State<RomansApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Romans coole App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
                "https://images.derstandard.at/img/2019/09/02/2954121110364814531668946384226118658426004n.png?w=800&s=43b3f07c"),
            machReihe("Name:", "Roman"),
            machReihe("Alter:", "21"),
            machReihe("Wohnort:", "Welkers"),
            machReihe("Lieblingsessen:", "Rumpsteak"),
          ],
        ),
      ),
    );
  }

  Widget machReihe(Attribut, Wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            Attribut,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            Wert,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
