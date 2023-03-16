import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

final horizontalCalendar = Container(
    child: HorizontalCalendar(
        date: DateTime.now(),
        textColor: Colors.black45,
        backgroundColor: Colors.white,
        selectedColor: Color.fromRGBO(52, 89, 149, 1),
        onDateSelected: (date) => print(
              date.toString(),
            )));

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Text(
            "Calendar",
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Column(
          children: [
            horizontalCalendar,
            //Take out the Trash task
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 330,
                  height: 93,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Image.asset('lib/assets/trash_icon.png',
                              height: 30, width: 30),
                          alignment: Alignment(0.0, 0.0)),
                      Container(
                          child: const Text("Take Out The Trash"),
                          alignment: Alignment(-0.1, 0.0)),
                      Container(
                          child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              }))
                    ],
                  ))
            ]),
            //Take out the Trash task
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 330,
                  height: 93,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.black)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          child: Image.asset('lib/assets/lawnmower_icon.png',
                              height: 30, width: 30),
                          alignment: Alignment(0.0, 0.0)),
                      Container(
                          child: const Text("Mow the Front Yard"),
                          alignment: Alignment(-0.1, 0.0)),
                      Container(
                          child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                  print(isSwitched);
                                });
                              }))
                    ],
                  ))
            ])
          ],
        ));
  }
}
