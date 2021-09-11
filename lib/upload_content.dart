import 'package:appitude_ui/constants/screen_const.dart';
import 'package:appitude_ui/explore.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadContentSCr extends StatelessWidget {
  const UploadContentSCr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => ExploreScr()));
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: black,
          ),
        ),
        centerTitle: true,
        title: Text("Upload  Content"),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: black,
            child: FittedBox(
              child: Icon(
                Icons.person,
                color: white,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: width(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: goldColor.withOpacity(0.6),
                      child: FittedBox(
                        child: Text(
                          "1",
                          style: textTheme(context)
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 1,
                      width: width(context) * 0.2,
                      color: goldColor,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: goldColor,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFF9F9F9),
                        foregroundColor: Colors.greenAccent,
                        child: FittedBox(
                          child: Text(
                            "2",
                            style: textTheme(context)
                                .subtitle2
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 1,
                      width: width(context) * 0.2,
                      color: goldColor,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: goldColor,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFF9F9F9),
                        foregroundColor: Colors.greenAccent,
                        child: FittedBox(
                          child: Text(
                            "3",
                            style: textTheme(context)
                                .subtitle2
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DottedBorder(
                radius: Radius.circular(12),
                padding: EdgeInsets.all(6),
                color: goldColor,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: height(context) * 0.3,
                  width: width(context) * 0.6,
                  child: Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.cloud_upload_outlined),
                          iconSize: 60,
                        ),
                        Text(
                          "Upload music file",
                          style: textTheme(context).caption,
                        ),
                        Text(
                          "Browse",
                          style: textTheme(context)
                              .subtitle2
                              ?.copyWith(color: goldColor, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "Max size 10mb",
                  style: textTheme(context).overline,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "SONG TITLE",
                  style: textTheme(context).headline6?.copyWith(fontSize: 15),
                ),
              ),
              UploadTextWidget(
                hintText: "e.g The Mountains",
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Record Label",
                  style: textTheme(context).headline6?.copyWith(fontSize: 15),
                ),
              ),
              UploadTextWidget(
                hintText: "e.g The Mountains Groups",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Year realsed",
                          style: textTheme(context)
                              .headline6
                              ?.copyWith(fontSize: 15),
                        ),
                      ),
                      RealsedWid(
                        text: "Select year",
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Year realsed",
                          style: textTheme(context)
                              .headline6
                              ?.copyWith(fontSize: 15),
                        ),
                      ),
                      RealsedWid(
                        text: "HipHop",
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Save & Continue",
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
      ),
    );
  }
}

class RealsedWid extends StatelessWidget {
  const RealsedWid({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: goldColor), color: Color(0xFFF2EBD3)),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            text,
            style: textTheme(context).caption,
          ),
          Icon(
            Icons.arrow_drop_down_outlined,
            color: black,
          )
        ],
      ),
    );
  }
}

class UploadTextWidget extends StatelessWidget {
  final String hintText;

  const UploadTextWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 60,
      child: TextFormField(
        onChanged: (change) {},
        onSaved: (save) {},
        validator: (valid) {},
        // keyboardType: keyboardType,
        // textInputAction: textInputAction,
        // obscureText: obscureText,
        cursorColor: Colors.black,

        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: goldColor)),
          fillColor: Color(0xFFF2EBD3),
          filled: true,

          // prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.only(
            left: 20.0,
            top: 30.0,
          ),

          border: OutlineInputBorder(borderSide: BorderSide(color: goldColor)),
          hintText: hintText,
          // errorText: "faliure",
          hintStyle: textTheme(context).overline,
        ),
      ),
    );
  }
}
