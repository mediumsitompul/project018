import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class MyResult extends StatefulWidget {
  String search;
  MyResult({Key? key, required this.search}) : super(key: key);

  @override
  State<MyResult> createState() => _MyResultState();
}

class _MyResultState extends State<MyResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('SCREEN-2')),
      ),
      body: Center(child: Text(widget.search, style: const TextStyle(fontSize: 60),)),
      );
    //);
  }
}
