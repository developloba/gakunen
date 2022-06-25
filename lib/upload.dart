import 'package:flutter/material.dart';
import 'analysis.dart';
import 'dashboard.dart';

class Up extends StatefulWidget {
  const Up({Key? key}) : super(key: key);

  @override
  State<Up> createState() => _UpState();
}

class _UpState extends State<Up> {
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
            body: Column(
              children: [
                SizedBox(
                    width: 350,
                    child: TextField(
                      style:
                          const TextStyle(fontFamily: 'Products', fontSize: 25),
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45),
                              borderSide:
                                  BorderSide(color: Colors.blueGrey.shade500)),
                          labelText: 'Firstname',
                          labelStyle: TextStyle(
                              fontFamily: 'Products',
                              fontSize: 20,
                              color: Colors.blueGrey.shade500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    )),
              ],
            )));
  }
}
