import 'package:appitude_ui/auth_page.dart';
import 'package:appitude_ui/bottom_nav_bar.dart';
import 'package:appitude_ui/constants/screen_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: black),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => AuthScreen()));
            },
          ),
        ),
        body: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                alignment: Alignment.topCenter,
                child: Text(
                  "Sign In",
                  style: textTheme(context).headline6,
                ),
              ),
              Text(
                "Welcome back",
                style: textTheme(context).caption,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: AuthTextWidget(
                  hintText: "Username/Email",
                  keyboardType: TextInputType.text,
                  preffixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              AuthTextWidget(
                hintText: "Password",
                keyboardType: TextInputType.text,
                preffixIcon: Icon(
                  Icons.shield,
                  color: Colors.grey,
                ),
                textInputAction: TextInputAction.next,
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                alignment: Alignment.centerRight,
                child: Text(
                  "Lost your password?",
                  style: textTheme(context)
                      .overline
                      ?.copyWith(decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 30, 30, 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    primary: black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => BottomSheetScreen()));
                  },
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
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Or Sign in with",
                  style: textTheme(context).overline,
                ),
              ),
              Container(
                  width: width(context) * 0.4,
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: white,
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: white,
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}

class AuthTextWidget extends StatelessWidget {
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final Icon preffixIcon;
  final bool obscureText;

  const AuthTextWidget({
    Key? key,
    required this.hintText,
    required this.textInputAction,
    required this.keyboardType,
    required this.preffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      height: 80,
      child: TextFormField(
        onChanged: (change) {},
        onSaved: (save) {},
        validator: (valid) {},
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obscureText,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              child: preffixIcon,
              backgroundColor: Color(0xFFF2EBD3),
            ),
          ),
          // prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.only(
            left: 30.0,
            top: 50.0,
          ),

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          hintText: hintText,
          // errorText: "faliure",
          hintStyle: textTheme(context).caption,
        ),
      ),
    );
  }
}
