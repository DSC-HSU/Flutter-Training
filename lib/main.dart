import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Size screenSize;
  @override
  Widget build(BuildContext context) {
    this.screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: generateLogo(screenSize)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
      ),
    );
  }

  generateLogo(Size screenSize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenSize.width * 0.3,
          child: Image.asset(
            "assets/img/logo_dsc_icon.png",
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Image.asset("assets/img/DSC_HSU_Justify_TextOnly (2).png"),
        )
      ],
    );
  }
}
