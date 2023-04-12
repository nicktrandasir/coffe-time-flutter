import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/layouts/authLayout.dart';
import 'package:coffe_flutter/pages/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Coffee app',
      home: MyHomePage(title: 'Coffee app'),
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
    return AuthLayout(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 200)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.blue,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(300, 52),
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterScreen()),
              )
            },
            child: Wrap(
              children: const <Widget>[
                Icon(
                  Icons.facebook,
                  color: MyColors.white,
                  size: 24.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Войти через Facebook", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 24)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.greenLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0)),
              minimumSize: const Size(300, 52),
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterScreen()),
              )
            },
            child: const Text(
              'Регистрация',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
