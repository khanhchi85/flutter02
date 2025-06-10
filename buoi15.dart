import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.red, height: 100)),
              Expanded(flex: 1, child: Container(color: Colors.orange, height: 100)),
              Expanded(flex: 1, child: Container(color: Colors.red, height: 100)),
            ],
          ),
          
          Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.yellow, height: 100)),
              Expanded(flex: 1, child: Container(color: Colors.green, height: 100)),
              Expanded(flex: 1, child: Container(color: Colors.red, height: 100)),
            ],
          ),
         
          Row(
            children: [
              Expanded(flex: 1, child: Container(color: Colors.purple, height: 200)),
              Expanded(flex: 1, child: Container(color: Colors.blue, height: 200)),
              Expanded(flex: 1, child: Container(color: Colors.black, height: 200)),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: CustomGrid()));
}
