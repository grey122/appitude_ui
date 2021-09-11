import 'package:appitude_ui/auth_page.dart';
import 'package:appitude_ui/constants/routes/app_pages.dart';
import 'package:appitude_ui/constants/screen_const.dart';
import 'package:appitude_ui/constants/theme.dart';
import 'package:appitude_ui/explore.dart';
import 'package:appitude_ui/login_page.dart';
import 'package:appitude_ui/model/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'Appitude Ui',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFF9F9F9),
            elevation: 0.0,
            textTheme: textTheme(context)),
        textTheme: textThemeData,
        primaryTextTheme: textThemeData,
        accentTextTheme: textThemeData,
        scaffoldBackgroundColor: Color(0xFFF9F9F9),
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.routes,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((__) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => AuthScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage(cream))),
        ),
      )),
    );
  }
}
