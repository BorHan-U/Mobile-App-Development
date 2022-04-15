//Name: Md borhan uddin, Matric Number: 1822665
// description: this Assignment is about to create an app with some functinalities
//like text widget creation and some real app button creation to pop expected output in app.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var fruitIndex = 0;
  String dropDownValue = "Select Fruit";

  @override
  var fruitList = ["No Fruit", "Apple", "Orange", "Rambutan"];
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          primarySwatch: Colors.purple,
          // fontFamily: 'Georgia',
          textTheme: const TextTheme(
            headline6: TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 44.0, fontFamily: 'Hind'),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Fruit List App"),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    padding: EdgeInsets.all(40),
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${fruitList[fruitIndex]}',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 150, 20, 140),
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        DropdownButton<String>(
                          value: dropDownValue,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 34,
                          elevation: 16,
                          style: const TextStyle(
                              color: Colors.purple, fontSize: 25),
                          underline: Container(
                            height: 2,
                            color: Colors.purple,
                          ),
                          items: fruitList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropDownValue = newValue!;
                              if (newValue == fruitList[1])
                                fruitIndex = 1;
                              else if (newValue == fruitList[2])
                                fruitIndex = 2;
                              else if (newValue == fruitList[3])
                                fruitIndex = 3;
                              else
                                fruitIndex = 0;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 00),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white10,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 40),
                                ),
                                child: Text(fruitList[1]),
                                onPressed: () => {
                                      setState(() {
                                        fruitIndex = 1;
                                      }),
                                      print(
                                          'Button Pressed, fruitIndex value is ${fruitIndex} now'),
                                    }),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 40),
                                ),
                                child: Text(fruitList[2]),
                                onPressed: () => {
                                      setState(() {
                                        fruitIndex = 2;
                                      }),
                                      print(
                                          'Button Pressed, fruitIndex value is ${fruitIndex} now'),
                                    }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 40),
                                ),
                                child: Text(fruitList[3]),
                                onPressed: () => {
                                      setState(() {
                                        fruitIndex = 3;
                                      }),
                                      print(
                                          'Button Pressed, fruitIndex value is ${fruitIndex} now'),
                                    }),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(150, 40),
                                ),
                                child: Text('Clear'),
                                onPressed: () => {
                                      setState(() {
                                        fruitIndex = 0;
                                      }),
                                      print(
                                          'Button Pressed, fruitIndex value is ${fruitIndex} now'),
                                    }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
