import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator",
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //static double a = 0.0;
  //static double b = 0.0;
  double c = 0.0;
  double output = 0.0;
  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
  }

  void add() {
    c = double.parse(controller1.text) + double.parse(controller2.text);
    setState(() {
      output = c;
    });
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                controller: controller1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
                controller: controller2,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 25,
              width: 30,
              color: Colors.white,
              child: Text("$output"),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              child: MaterialButton(
                  child: Text("Add"),
                  onPressed: () {
                    add();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
