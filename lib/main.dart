import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display = '';

  String operater = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          _buildDisplay(),
          _buildButtons1(),
          _buildButtons2(),
          _buildButtons3(),
          _buildButtons4(),
        ],
      ),
    );
  }

  Widget _buildDisplay() {
    return Container(
      width: double.maxFinite,
      height: 120,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen[400],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Text(
        display,
        textAlign: TextAlign.right,
        style: TextStyle(color: Colors.white, fontSize: 50),
      ),
    );
  }

  Widget _buildButtons1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20, top: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('7');
            },
            child: Text('7', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20, top: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('8');
            },
            child: Text('8', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20, top: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('9');
            },
            child: Text('9', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 20, top: 40),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('/');
              operater = '/';
            },
            child: Text('/', style: TextStyle(fontSize: 25)),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('4');
            },
            child: Text('4', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('5');
            },
            child: Text('5', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('6');
            },
            child: Text('6', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('*');
              operater = '*';
            },
            child: Text('*', style: TextStyle(fontSize: 25)),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('1');
            },
            child: Text('1', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('2');
            },
            child: Text('2', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('3');
            },
            child: Text('3', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('-');
              operater = '-';
            },
            child: Text('-', style: TextStyle(fontSize: 25)),
          ),
        ),
      ],
    );
  }

  Widget _buildButtons4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              clearDisplay();
            },
            child: Text('C', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('0');
            },
            child: Text('0', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: calculate,
            child: Text('=', style: TextStyle(fontSize: 25)),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue[200]),
            onPressed: () {
              showcaseDisplay('+');
              operater = '+';
            },
            child: Text('+', style: TextStyle(fontSize: 25)),
          ),
        ),
      ],
    );
  }

  void calculate() {
    List<String> values = display.split(operater);

    if (operater == '+') {
      double result = double.parse(values[0]) + double.parse(values[1]);
      setState(() {
        display = result.toString();
      });
    }
    if (operater == '-') {
      double result = double.parse(values[0]) - double.parse(values[1]);
      setState(() {
        display = result.toString();
      });
    } else if (operater == '*') {
      double result = double.parse(values[0]) * double.parse(values[1]);
      setState(() {
        display = result.toString();
      });
    } else if (operater == '/') {
      double result = double.parse(values[0]) / double.parse(values[1]);
      setState(() {
        display = result.toString();
      });
    }
  }
  void clearDisplay() {
    setState(() {
      display = '';
    });
  }

  void showcaseDisplay(String text) {
    setState(() {
      display += text;
    });
  }
}
