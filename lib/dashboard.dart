import 'package:gakunen/analysis.dart';
import 'package:gakunen/calculator.dart';
import 'package:gakunen/upload.dart';

import 'main.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Products',
                            fontSize: 80,
                            fontStyle: FontStyle.normal),
                        children: [
                      TextSpan(text: 'Welcome'),
                      TextSpan(
                          text: ' Elile',
                          style: TextStyle(color: Colors.blueGrey)),
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
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Calc()));
                            },
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Stack(
                                children: [
                                  SizedBox(
                                      width: 400,
                                      height: 280,
                                      child: Image.asset(
                                        'images/card 2.png',
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                      )),
                                ],
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    SizedBox(
                      height: 280,
                      width: 400,
                      child: Text(
                        "Calculate your cgpa remotely, No stress, No hassle, We will keep your Results safe , we promise to use our target setting feature to estimate how many of those good grades you need to get your desired Cgpa!",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Pop',
                            fontSize: 23),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 280,
                      width: 400,
                      child: Text(
                        "Calculate your cgpa remotely, No stress, No hassle, We will keep your Results safe , we promise to use our target setting feature to estimate how many of those good grades you need to get your desired Cgpa!",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Pop',
                            fontSize: 23),
                      ),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 90.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Up()));
                            },
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Stack(
                                children: [
                                  SizedBox(
                                      width: 400,
                                      height: 280,
                                      child: Image.asset(
                                        'images/card 1.jpg',
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                      )),
                                ],
                              ),
                            ),
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
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Analysis()));
                            },
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              elevation: 15,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Stack(
                                children: [
                                  SizedBox(
                                      width: 400,
                                      height: 280,
                                      child: Image.asset(
                                        'images/card 3.jpg',
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                      )),
                                ],
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 150,
                    ),
                    SizedBox(
                      height: 280,
                      width: 400,
                      child: Text(
                        "Calculate your cgpa remotely, No stress, No hassle, We will keep your Results safe , we promise to use our target setting feature to estimate how many of those good grades you need to get your desired Cgpa!",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontFamily: 'Pop',
                            fontSize: 23),
                      ),
                    )
                  ],
                ),
              ]),
            ],
          ),
        ));
  }
}
