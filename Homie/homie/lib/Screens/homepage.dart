import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Welcome Back to the', 
                  style: TextStyle(
                    color: Colors.blue),
                    ),
                Text('Blue Household', 
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20),
                    )
              ],
            )
          ),
          /* title: const Text("Welcome Back to the Blue Household",
              style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white, */
          ),
        body: Container(
            height: 200,
            width: double.infinity,
            //color: Colors.pink,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                
                width: 80.0,
                height: 100.0,
              ),
            )));
  }
}

/* child: const Text(
              "Hey I'm in this container please work!!",
              style: TextStyle(fontSize: 15),
            ) */
