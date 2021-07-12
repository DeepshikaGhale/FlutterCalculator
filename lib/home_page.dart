import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1, num2, num3;

  void doAddition() {
    setState(() {
      num3 = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //scaffold has a pre defined architecture for MaterialApp
      appBar: AppBar(
        title: new Text('Calculator'),
      ),
      body: new Container(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                'Output: $num3',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: 'Enter Number 1'),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: 'Enter Number 2'),
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    child: new Text("+"),
                    onPressed: () {},
                  ),
                  new ElevatedButton(
                    child: new Text("-"),
                    onPressed: () {},
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    child: new Text("*"),
                    onPressed: () {},
                  ),
                  new ElevatedButton(
                    child: new Text("/"),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
