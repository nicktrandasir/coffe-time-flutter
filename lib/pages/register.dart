import 'package:coffe_flutter/pages/main.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _ListState();
}

class _ListState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  const Padding(padding: EdgeInsets.only(top: 120)),
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
                  const Padding(padding: EdgeInsets.only(top: 52)),
                  Image(image: AssetImage('assets/images/user_borders.png')),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(65, 80, 65, 22),
                            child: Center(
                              child: TextFormField(

                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white),

                                  ),
                                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                                  suffixIcon: Align(
                                    widthFactor: 1.0,
                                    heightFactor: 1.0,
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  hintText: 'ФИО',
                                  //border: Shadow(color: Colors.white),
                                ),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Укажите ФИО!';
                                  }
                                  return null;
                                },
                              ),
                            )),
                        Center(
                          child: ElevatedButton(
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
                                    builder: (context) => MainScreen()),
                              ),
                              // if (_formKey.currentState!.validate()) {
                              //
                              // }
                            },

                            child: const Text(
                              'далее',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
