import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
              margin: new EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: Text(
                "Strawberry Pavlova",
                style: TextStyle(color: Colors.grey, fontSize: 30),
              )),
          Container(
              margin: new EdgeInsets.fromLTRB(0, 10, 0, 10),
              padding: new EdgeInsets.fromLTRB(80, 0, 80, 0),
              child: Text(
                "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              )),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: new EdgeInsets.fromLTRB(0, 10, 30, 20),
                child: Row(children: [
                  Icon(Icons.star, color: Colors.grey),
                  Icon(Icons.star, color: Colors.grey),
                  Icon(Icons.star, color: Colors.grey),
                  Icon(Icons.star, color: Colors.grey),
                  Icon(Icons.star, color: Colors.grey)
                ])),
            Text(
              "170 review",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )
          ]),
          Wrap(
            direction: Axis.horizontal,
            spacing: 30,
            children: [
              Column(children: [
                Icon(Icons.book, color: Colors.green),
                Text("PREP:", style: TextStyle(color: Colors.grey)),
                Text("25 min", style: TextStyle(color: Colors.grey)),
              ]),
              Column(children: [
                Icon(Icons.timer, color: Colors.green),
                Text("COOK:", style: TextStyle(color: Colors.grey)),
                Text("1hr", style: TextStyle(color: Colors.grey)),
              ]),
              Column(children: [
                Icon(Icons.food_bank, color: Colors.green),
                Text("FEEDS:", style: TextStyle(color: Colors.grey)),
                Text("4-6", style: TextStyle(color: Colors.grey)),
              ])
            ],
          )
        ],
      ),
    );
  }
}
