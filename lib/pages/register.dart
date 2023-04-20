import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/layouts/authLayout.dart';
import 'package:coffe_flutter/pages/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _ListState();
}

class _ListState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final String name;

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
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: MyColors.white),
                        ),
                        hintStyle: const TextStyle(
                            fontSize: 20.0, color: MyColors.white),
                        suffixIcon: const Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.edit_outlined,
                            color: MyColors.white,
                          ),
                        ),
                        hintText: 'registerPage.placeholder'.tr(),
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('registerPage.validation'.tr()),
                            ),
                          );
                          return 'registerPage.validation'.tr();
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
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate())
                        {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('registerPage.nameSaved'.tr()),
                            ),
                          ),
                          Timer(const Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Home(),
                              ),
                            );
                          })
                        }
                    },
                    child: Text(
                      'next'.tr(),
                      style: const TextStyle(fontSize: 18),
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
