import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';


main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Center(child: Text('SCREEN-1')),),
      body: MyProject(),
      ),
    );
  }
}



class MyProject extends StatefulWidget {
  MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
 
  @override
  Widget build(BuildContext context) {
    
    TextEditingController _search = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: TextField(
              controller: _search,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Send Data'
              ),
            ),
          ),
        ),

        Container(
          height: 50, width: 150,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyResult(search: _search.text)));
          }, child: const Text('Go to Screen-2')),
        )

      ],
    );
  }
}
