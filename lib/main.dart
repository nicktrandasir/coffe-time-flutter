import 'package:coffe_flutter/common/colors.dart';
import 'package:coffe_flutter/components/layouts/authLayout.dart';
import 'package:coffe_flutter/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale("ru"), //переключение языка
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('layout.noAPI'.tr()),
                ),
              ),
            },
            child: Wrap(
              children: <Widget>[
                const Icon(
                  Icons.facebook,
                  color: MyColors.white,
                  size: 24.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("layout.enterWith".tr(args: ['Facebook']),
                    style: const TextStyle(fontSize: 20)),
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
            child: Text(
              "layout.registration".tr(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
