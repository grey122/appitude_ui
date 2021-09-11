import 'package:appitude_ui/constants/screen_const.dart';
import 'package:appitude_ui/login_page.dart';
import 'package:appitude_ui/model/images.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          padding: EdgeInsets.only(top: height(context) * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                width: width(context) * 0.4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(cream),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "dreams Come True",
                  style: textTheme(context)
                      .caption
                      ?.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 100, 30, 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    primary: goldColor,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign Up",
                        style:
                            textTheme(context).button?.copyWith(color: white),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 1, 30, 1),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    primary: black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign In",
                        style:
                            textTheme(context).button?.copyWith(color: white),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
