import 'package:basics/pages/home_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        home: HomePage()
    );
  }
}

  // void incrementCounter()
  // {
  //   setState(() {
  //     counter++;
  //   });
  //
  // }
  // void decrementCounter()
  // {
  //   setState(() {
  //     counter2--;
  //   });
  // }

  // void printHello(int num)
  // {
  //   debugPrint('Hello world');
  //   debugPrint("This is the number :$num");
  // }
