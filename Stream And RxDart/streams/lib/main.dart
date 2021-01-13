import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

Stream<int> getNumbers() async* {
  for (var i = 10; i >= 3; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

class HomeModel {
  final StreamController<int> _numbersController =
      StreamController<int>.broadcast();
  Stream<int> get outNumbers => _numbersController.stream;
  Sink<int> get inNumbers => _numbersController.sink;

  void dispose() {
    _numbersController.close();
  }
}

// class _MyAppState extends State<MyApp> {

class MyApp extends StatelessWidget {
  // int currentNumber;

  // @override
  // void initState() {
  //   getNumbers().listen((data) {
  //     currentNumber = data;
  //   });
  //   super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body: StreamBuilder<int>(
  //           stream: getNumbers()
  //               // .where((n) => n == 3),
  //               .map((n) => n * 2),
  //           builder: (context, snapshot) {
  //             return Center(
  //               child: Text(
  //                   snapshot.data != null
  //                       ? snapshot.data.toString()
  //                       : 'no Data',
  //                   style: TextStyle(fontSize: 20)),
  //             );
  //           }),
  //     ),
  //   );
  // }

  final model = HomeModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Padding(
         padding: EdgeInsets.only(top: 20),
         child: Center(
           
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Widget1(model),
               Widget2(model),
             ],
           ),
         ),
       ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  final HomeModel _model;
  Widget1(this._model);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _model.outNumbers,
      builder: (context, snapshot) {
        return Text(
            snapshot.data != null ? snapshot.data.toString() : 'no Data',
            style: TextStyle(fontSize: 20)
        );
      },
    );
  }
}

class Widget2 extends StatelessWidget {
  final HomeModel _model;
  Widget2(this._model);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _model.inNumbers.add(Random().nextInt(2000));
      },
      child: Text('Press Me'),
    );
  }
}
