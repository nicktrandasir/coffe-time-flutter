import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Coffee app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      body: Container(
        // height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.yellow,
                Colors.red,
                Colors.indigo,
                Colors.teal,
              ],
            )
            // backgroundBlendMode: BlendMode.color(linear-gradient(-180deg, rgba(0,0,0,0.00) 0%, rgba(243,233,216,0.79) 88%));
            ),
        child: OverflowBox(
          child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0),
                      Color.fromRGBO(243, 233, 216, 0.79)
                    ]),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 120)),
                  Center(
                    child: Text('CoffeTime',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 64,
                            fontFamily: 'Lobster')),
                  ),
                  Container(
                    transform: Matrix4.translationValues(30.0, -10.0, 0.0),
                    child: Text('территория кофе',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF-UI-Medium',
                        )),
                  ),
                  Padding(padding: EdgeInsets.only(top: 400)),
                  Container(
                      child: FloatingActionButton.extended(
                    onPressed: () => {},
                    backgroundColor: Color(0xFF3B5998),
                    icon: Icon(
                      Icons.facebook,
                    ),
                    label: Text(
                      'Войти через Facebook',
                      style: TextStyle(
                          fontFamily: 'SF-UI-Display-Regular',
                          fontWeight: FontWeight.w400),
                    ),
                  ))
                ],
              )),
        ),
      ),
    );
  }
}
