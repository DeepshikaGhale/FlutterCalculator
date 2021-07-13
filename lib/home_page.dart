import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, num3 = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      num3 = num1 + num2;
    });
  }

  void doSubstraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      num3 = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      num3 = num1 * num2;
    });
  }

  void doDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      num3 = num1 ~/ num2;
    });
  }

  void checkModulus() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);

      num3 = num1 % num2;
    });
  }

  void Clear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
      num3 = 0;
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
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: 'Enter Number 2'),
                controller: t2,
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    child: new Text("+"),
                    onPressed: doAddition,
                  ),
                  new ElevatedButton(
                    child: new Text("-"),
                    onPressed: doSubstraction,
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    child: new Text("*"),
                    onPressed: doMultiplication,
                  ),
                  new ElevatedButton(
                    child: new Text("/"),
                    onPressed: doDivision,
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                      onPressed: checkModulus, child: new Text('%')),
                  new ElevatedButton(onPressed: Clear, child: new Text('Clear'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
