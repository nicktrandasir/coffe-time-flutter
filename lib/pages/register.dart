import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/layouts/authLayout.dart';
import 'package:coffe_flutter/pages/home.dart';
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
    return AuthLayout(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 52)),
          const Image(image: AssetImage('assets/images/user_borders.png')),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(65, 80, 65, 22),
                  child: Center(
                    child: TextFormField(
                      style:
                          const TextStyle(color: MyColors.white, fontSize: 18),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: MyColors.white),
                        ),
                        hintStyle:
                            TextStyle(fontSize: 20.0, color: MyColors.white),
                        suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.edit_outlined,
                            color: MyColors.white,
                          ),
                        ),
                        hintText: 'ФИО',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Укажите ФИО!';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Center(
                  child: ElevatedButton(
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
                        MaterialPageRoute(
                            builder: (context) => const Home()),
                      ),
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
      ),
    );
  }
}
