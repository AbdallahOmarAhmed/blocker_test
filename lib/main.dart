import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

bool f = true;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

Future<void> makeImage() async{
/*
the image in in file images/image.jpeg
output should be in images/out.jpeg
start code here
 */


// end code here
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            makeImage().then((value){
              setState(() {
                print(f);
                f = false;
              });
            }
            );
          }
        ),
        body: Center(
            child: Image.asset(f ? 'images/image.jpeg':'images/out.jpeg')
        )
      ),
    );
  }
}