import 'package:gakunen/analysis.dart';
import 'package:gakunen/calculator.dart';
import 'package:gakunen/upload.dart';
import 'dart:math';

import 'main.dart';

import 'package:flutter/material.dart';

String name = ' Korede';
List<String> names = [' Dolapo', ' Elile', ' Chidinma', ' Loba', ' segggs'];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void randomname() {
    setState(() {
      var intValue = Random().nextInt(4);
      name = names[intValue];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/cir.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 100,
              title: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Gakunen',
                      style: TextStyle(fontFamily: 'Products', fontSize: 30),
                    ),
                  ),
                  const Spacer(),
                  Row(children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0)),
                      onPressed: () {
                        randomname();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontFamily: 'Products',
                              fontSize: 25,
                              color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Up()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Upload',
                          style: TextStyle(
                              fontFamily: 'Products',
                              fontSize: 25,
                              color: Colors.blueGrey),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          elevation: MaterialStateProperty.all<double>(0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Analysis()));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Analytics',
                          style: TextStyle(
                              fontFamily: 'Products',
                              fontSize: 25,
                              color: Colors.blueGrey),
                        ),
                      ),
                    ),
                  ])
                ],
              )),
          body: ListView(
            children: [
              Column(children: [
                const SizedBox(
                  height: 100,
                ),
                RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'Products',
                            fontSize: 80,
                            fontStyle: FontStyle.normal),
                        children: [
                      const TextSpan(text: 'Welcome'),
                      TextSpan(
                          text: name,
                          style: const TextStyle(color: Colors.blueGrey)),
                    ])),
                const SizedBox(
                  height: 100,
                  width: 400,
                  child: Text(
                      'Gakunen has been tested and tried for accuracy in achieving the Cgpa of your dreams',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 90.0),
                          child: Abstract(
                              pic: Image.asset(
                            'images/card 2.png',
                            fit: BoxFit.fill,
                          ))),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    const Filler()
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Filler(),
                    const SizedBox(
                      width: 150,
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 90.0),
                          child: Abstract(
                            pic: Image.asset(
                              'images/card 1.jpg',
                              fit: BoxFit.fill,
                            ),
                            destination: const Up(),
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 90.0),
                            child: Abstract(
                              pic: Image.asset(
                                'images/card 3.jpg',
                                fit: BoxFit.fill,
                                alignment: Alignment.center,
                              ),
                              destination: const Analysis(),
                            ))),
                    const SizedBox(
                      width: 150,
                    ),
                    const Filler()
                  ],
                ),
              ]),
            ],
          ),
        ));
  }
}
