import 'package:flutter/material.dart';
import 'package:gakunen/dashboard.dart';
import 'dart:math';
import 'createuser.dart';
import 'dashboard.dart';

class Tway extends StatefulWidget {
  const Tway({Key? key}) : super(key: key);

  @override
  State<Tway> createState() => _TwayState();
}

class _TwayState extends State<Tway> {
  void replygen() {
    setState(() {
      var intValue = Random().nextInt(4);
      reply = replies[intValue];
    });
  }

  String reply = '';
  List<String> replies = [
    'Hey',
    'how are you',
    ' how was your day',
    'are you fine?'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img3.jpg'), //BACKGROUND IMAGE
                fit: BoxFit.cover,
                opacity: 70),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(40),
              ),
              height: 520,
              width: 640,
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'Coolvetica',
                              fontSize: 50),
                          children: <TextSpan>[
                        const TextSpan(text: 'Login to'),
                        TextSpan(
                            text: ' Gakunen',
                            style: TextStyle(color: Colors.blueGrey[700]))
                      ])),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            gapPadding: 45,
                            borderRadius: BorderRadius.circular(45),
                            borderSide:
                                const BorderSide(color: Colors.blueGrey)),
                        hintText: 'Enter Username Here',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(45),
                            borderSide:
                                const BorderSide(color: Colors.blueGrey)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  SizedBox(
                    width: 400,
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide:
                                    const BorderSide(color: Colors.blueGrey)),
                            hintText: 'Enter Password Here',
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide:
                                    const BorderSide(color: Colors.blueGrey)),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.all(18),
                            child: Icon(Icons.visibility))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('New Member? Sign Up',
                          style: TextStyle(fontFamily: 'Pop', fontSize: 15)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Newuser()),
                          );
                        },
                        child: Text('here',
                            style: TextStyle(
                                fontFamily: 'Pop',
                                fontSize: 15,
                                color: Colors.blueGrey[800])),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blueGrey),
                          elevation: MaterialStateProperty.all<double>(0),
                          fixedSize: MaterialStateProperty.all<Size>(
                              const Size(100, 45)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                            30,
                          )))),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Products', color: Colors.white),
                      )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
