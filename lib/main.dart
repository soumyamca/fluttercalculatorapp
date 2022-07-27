
import 'package:calculatorbottomapp/screen/add.dart';
import 'package:calculatorbottomapp/screen/mul.dart';
import 'package:calculatorbottomapp/screen/sub.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List pages=[Add(),Sub(),Mul()];
  int _mycurrentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("calcapp",style: TextStyle(color: Colors.black),),
        ),
        body: pages[_mycurrentindex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentindex=index;
            });
            print(index);
          },
          currentIndex: _mycurrentindex,
          backgroundColor: Colors.greenAccent,
          items: [

            BottomNavigationBarItem(

                icon:Icon(Icons.add),
              label: "add"
            ),BottomNavigationBarItem(icon:Icon(Icons.approval),
            label: "sub"),
            BottomNavigationBarItem(icon:Icon(Icons.ac_unit),
            label: "mul"),


          ],
        ),
      ),
    );
  }
}
