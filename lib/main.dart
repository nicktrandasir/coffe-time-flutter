import 'package:coffe_flutter/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee app',
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
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main.png"), fit: BoxFit.cover),
        ),
        child: OverflowBox(
          child: Container(
              decoration: const BoxDecoration(
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
                  Center (
                    child: Row(
                      children: const [
                        Icon(
                          Icons.edit_outlined,
                          color: Colors.red,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 96)),
                  const Center(
                    child: Text('CoffeTime',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 64,
                            fontFamily: 'Lobster')),
                  ),
                  Container(
                    transform: Matrix4.translationValues(30.0, -10.0, 0.0),
                    child: const Text('территория кофе',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF-UI-Medium',
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 400)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF3B5998),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(300, 52), //////// HERE
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      )
                    },
                    child: Wrap(
                      children: const <Widget>[
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Войти через Facebook",
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 24)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[100],
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(300, 52), //////// HERE
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      )
                    },
                    child: const Text(
                      'Регистрация',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
