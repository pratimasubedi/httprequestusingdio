import 'package:flutter/material.dart';
import 'package:httprequestusingdio/main.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

void getHTTP() async {
  try {
    var response =
        await Dio().get("https://jsonplaceholder.typicode.com/todos/1");
    print(response);
  } catch (e) {
    print(e);
  }
  // ignore: unused_local_variable
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio tutorial'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            getHTTP();
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Button',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
