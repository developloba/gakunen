import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'analysis.dart';
import 'upload.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
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
                backgroundColor: Colors.transparent,
                elevation: 0,
                toolbarHeight: 100,
                title: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Calculator',
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
            body: ListView(children: [
              Column(children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Your current Gpa is,',
                  style: TextStyle(
                      fontFamily: 'Products',
                      color: Colors.black,
                      fontSize: 50),
                ),
                const SizedBox(
                  height: 100,
                  width: 400,
                  child: Text('Dont worry, We Wont tell',
                      style: TextStyle(
                        fontFamily: 'Pop',
                        fontSize: 19,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center),
                ),
                Stack(
                  children: [
                    Container(
                        width: 450.0,
                        height: 450.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blueGrey, width: 10),
                        ),
                        child: const Center(
                          child: Text('0.00',
                              style: TextStyle(
                                  fontFamily: 'Lucky', fontSize: 150)),
                        ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Better luck next time',
                    style: TextStyle(
                      fontFamily: 'Pop',
                      fontSize: 35,
                      color: Colors.grey,
                    ),
                  ),
                )
              ])
            ])));
  }
}
