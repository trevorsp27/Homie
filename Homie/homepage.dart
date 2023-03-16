import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  //int _selectedIndex = 0;
  bool checked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: false,
        flexibleSpace: Container(
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            //mainAxisAlignment:
            //margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back to the',
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
                ),
                Text(
                  'Blue Household',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
      ),
      body: Column(
        children: [
          Container(
              height: 224,
              //width: double.infinity,
              width: 370,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 249, 126, 115),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: [
                  Text("Today's Tasks",
                      //textAlign: TextAlign.right,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                      )),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checked,
                        onChanged: (bool? value) {
                          setState(() {
                            checked = value!;
                          });
                        },
                      ),
                      const Text(
                        'Testy',
                        style: TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ],
              )),
          Container(
            height: 139,
            width: 370,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 33, 243, 219),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          ),
          Container(
            height: 140,
            //width: double.infinity,
            width: 370,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 235, 108, 150),
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          )

          // ],
          //),
        ],
      ),
      /*  bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow,
        ) */
    );
  }
}
