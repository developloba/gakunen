import 'package:flutter/material.dart';
import 'package:gakunen/calculator.dart';
import 'upload.dart';
import 'dashboard.dart';
import 'analysis.dart';
import 'package:gakunen/loginscreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Tway(),
      theme: ThemeData.light(),
      title: 'Gaku',
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Filler extends StatelessWidget {
  const Filler({
    Key? key,
    this.fill =
        "Calculate your cgpa remotely, No stress, No hassle, We will keep your Results safe , we promise to use our target setting feature to estimate how many of those good grades you need to get your desired Cgpa!",
  }) : super(key: key);
  final String fill;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280,
        width: 400,
        child: Text(
          fill,
          style: TextStyle(
              color: Colors.grey[700], fontFamily: 'Pop', fontSize: 23),
        ));
  }
}

class SexyBar extends StatefulWidget implements PreferredSizeWidget {
  const SexyBar({Key? key, this.child})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  final Text? child;
  @override
  final Size preferredSize;

  Widget build(BuildContext context) {
    return AppBar(
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
                    elevation: MaterialStateProperty.all<double>(0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Up()));
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
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.transparent),
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
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class Txtfield extends StatefulWidget {
  const Txtfield({Key? key, this.mssg}) : super(key: key);
  final String? mssg;

  @override
  State<Txtfield> createState() => _TxtfieldState();
}

class _TxtfieldState extends State<Txtfield> {
  @override
  Widget build(BuildContext context) {
    String mssg = 'Username';
    return SizedBox(
        width: 350,
        child: TextField(
          style: const TextStyle(fontFamily: 'Products', fontSize: 25),
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: BorderSide(color: Colors.blueGrey.shade500)),
              label: Text(
                mssg,
              ),
              labelStyle: TextStyle(
                  fontFamily: 'Products',
                  fontSize: 20,
                  color: Colors.blueGrey.shade500),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              )),
        ));
  }
}

class Abstract extends StatelessWidget {
  const Abstract({Key? key, required this.pic, this.destination = const Calc()})
      : super(key: key);
  final Widget pic;
  final destination;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destination));
        },
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              SizedBox(width: 400, height: 280, child: pic),
            ],
          ),
        ));
  }
}
