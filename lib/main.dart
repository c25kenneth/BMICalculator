

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int height = 0; 
  int weight = 0; 
  double overallBMi = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator!'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'height',
              ),
              onChanged: (val){
                setState(() {
                  height = int.parse(val); 
                });
              },
            ),

          ),
          SizedBox(height: 25.0,), 
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'weight', 
              ),
              keyboardType: TextInputType.number,
              onChanged: (val) {
                setState(() {
                  weight = int.parse(val); 
                });
              },
            ),
          ), 
          SizedBox(height: 25.0),
          TextButton(onPressed: (){
              setState(() {
                overallBMi = 703 * (weight / pow(height, 2)); 
              });
              print(overallBMi.toString()); 
          }, child: Text('Calculate BMI!!'),),
          Text('Your BMI is: $overallBMi')
        ],
      ),
    ); 
  }

}
