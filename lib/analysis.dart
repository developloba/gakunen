import 'package:flutter/material.dart';
import 'upload.dart';
import 'dashboard.dart';

class Analysis extends StatefulWidget {
  const Analysis({Key? key}) : super(key: key);

  @override
  State<Analysis> createState() => _AnalysisState();
}

class _AnalysisState extends State<Analysis> {
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
                        'Analytics',
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
            body: Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(80),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 400,
                            width: 400,
                            child: Card(
                              elevation: 15,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 400,
                            width: 400,
                            child: Card(
                              elevation: 15,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 400,
                          width: 400,
                          child: Card(
                            color: Colors.blueGrey[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(65)),
                            elevation: 15,
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(80),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 400,
                            width: 400,
                            child: Card(
                              elevation: 15,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65)),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 400,
                            width: 400,
                            child: Card(
                              elevation: 15,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(65)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
