import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          // appBar: AppBar(
          //   title: Text('NoteMaker'),
          //   backgroundColor: Colors.blueGrey,
          // ),
          body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('Image/Prateek-modified.png'),
              ),
              Text(
                'Prateek Patidar',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Icon(
                    Icons.phone,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+919522752005',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Icon(
                    Icons.email,
                    size: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'prateekpatidar111@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
            ]),

//Container topic
            // child: Row(children: [
            //   Container(
            //     height: double.infinity,
            //     width: 100,
            //     color: Colors.red,
            //   ),
            //   SizedBox(
            //     width: 5,
            //   ),
            //   Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.yellow,
            //   ),
            //   Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.green,
            //   ),
            //   SizedBox(
            //     width: 5,
            //   ),
            //   Container(
            //     height: double.infinity,
            //     width: 100,
            //     color: Colors.blue,
            //   ),
            // ]),
            //   child: Column(
            // children: [
            //   Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.lightBlueAccent,
            //     child: Text('container1'),
            //   ),
            //   Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.red,
            //     child: Text('container2'),
            //   ),
            //   Container(
            //     height: 100,
            //     width: 100,
            //     color: Colors.white,
            //     child: Text('container3'),
            //   ),
            //],
          )),
    ),
  );
}
