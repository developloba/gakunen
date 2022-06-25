import 'package:flutter/material.dart';

class Newuser extends StatefulWidget {
  const Newuser({Key? key}) : super(key: key);

  @override
  State<Newuser> createState() => _NewuserState();
}

class _NewuserState extends State<Newuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: SizedBox(
                                width: 600,
                                height: 200,
                                child: RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                            fontFamily: 'Coolvetica',
                                            fontSize: 60,
                                            color: Colors.black),
                                        children: <TextSpan>[
                                      TextSpan(
                                        text: 'We are so glad to have you',
                                      ),
                                      TextSpan(
                                          text: ' here',
                                          style:
                                              TextStyle(color: Colors.blueGrey))
                                    ]))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: 350,
                                      child: TextField(
                                        style: const TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 25),
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(45),
                                                borderSide: BorderSide(
                                                    color: Colors
                                                        .blueGrey.shade500)),
                                            labelText: 'Firstname',
                                            labelStyle: TextStyle(
                                                fontFamily: 'Products',
                                                fontSize: 20,
                                                color:
                                                    Colors.blueGrey.shade500),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                      )),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SizedBox(
                                      width: 350,
                                      child: TextField(
                                        style: const TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 25),
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(45),
                                                borderSide: BorderSide(
                                                    color: Colors
                                                        .blueGrey.shade500)),
                                            labelText: 'Lastname',
                                            labelStyle: TextStyle(
                                                fontFamily: 'Products',
                                                fontSize: 20,
                                                color:
                                                    Colors.blueGrey.shade500),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            )),
                                      ))
                                ],
                              )),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                  width: 350,
                                  child: TextField(
                                    style: const TextStyle(
                                        fontFamily: 'Products', fontSize: 25),
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            borderSide: BorderSide(
                                                color:
                                                    Colors.blueGrey.shade500)),
                                        labelText: 'Matric number',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 20,
                                            color: Colors.blueGrey.shade500),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                  )),
                              const SizedBox(
                                width: 50,
                              ),
                              SizedBox(
                                  width: 350,
                                  child: TextField(
                                    style: const TextStyle(
                                        fontFamily: 'Products', fontSize: 25),
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            borderSide: BorderSide(
                                                color:
                                                    Colors.blueGrey.shade500)),
                                        labelText: 'Matric number',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 20,
                                            color: Colors.blueGrey.shade500),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        )),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 350,
                                child: Stack(
                                  alignment: AlignmentDirectional.centerEnd,
                                  children: <Widget>[
                                    TextField(
                                      obscureText: true,
                                      style: const TextStyle(
                                          fontFamily: 'Products', fontSize: 25),
                                      decoration: InputDecoration(
                                        labelText: 'Password',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 20,
                                            color: Colors.blueGrey.shade500),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: const BorderSide(
                                                color: Colors.blueGrey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            borderSide: const BorderSide(
                                                color: Colors.blueGrey)),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Icon(Icons.visibility))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              SizedBox(
                                width: 350,
                                child: Stack(
                                  alignment: AlignmentDirectional.centerEnd,
                                  children: <Widget>[
                                    TextField(
                                      obscureText: true,
                                      style: const TextStyle(
                                          fontFamily: 'Products', fontSize: 25),
                                      decoration: InputDecoration(
                                        labelText: 'Confirm Password',
                                        labelStyle: TextStyle(
                                            fontFamily: 'Products',
                                            fontSize: 20,
                                            color: Colors.blueGrey.shade500),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: const BorderSide(
                                                color: Colors.blueGrey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(45),
                                            borderSide: const BorderSide(
                                                color: Colors.blueGrey)),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Icon(Icons.visibility))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 45,
                          ),
                          Align(
                            alignment: AlignmentDirectional.bottomStart,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blueGrey),
                                    elevation:
                                        MaterialStateProperty.all<double>(0),
                                    fixedSize: MaterialStateProperty.all<Size>(
                                        const Size(150, 60)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                      20,
                                    )))),
                                child: const Text(
                                  'Create Account',
                                  style: TextStyle(
                                      fontFamily: 'Products',
                                      color: Colors.white,
                                      fontSize: 15),
                                )),
                          ),
                        ],
                      )),
                )),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/img7.png'),
                  fit: BoxFit.fill,
                  opacity: 40),
            ),
            height: 1200,
            width: 500,
          ))
        ],
      ),
    );
  }
}
