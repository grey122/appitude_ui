import 'package:appitude_ui/botttom_nav_bar_controller.dart';
import 'package:appitude_ui/constants/screen_const.dart';
import 'package:appitude_ui/model/explore_model.dart';
import 'package:appitude_ui/model/images.dart';
import 'package:appitude_ui/upload_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScr extends StatelessWidget {
  const ExploreScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<BottomNavBarCtr>();

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0.0,
        title: Text("Explore"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: black,
              )),
          IconButton(
            padding: EdgeInsets.only(right: 20, left: 10),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => UploadContentSCr()));
            },
            icon: Icon(
              Icons.cloud_upload_outlined,
              color: black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: width(context),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: height(context) * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(hottest),
              ),
            ),
          ),
          Expanded(
            child: Container(
              // height: height(context) * 0.4,
              margin: EdgeInsets.only(bottom: 0),
              child: ListView.builder(
                controller: ctrl.controller,
                itemCount: ExploreModel.genratedList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ExploreContents(
                        data: ExploreModel.genratedList[index],
                      ),
                      index == 0 ? Container() : MusicAudio(),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MusicAudio extends StatelessWidget {
  const MusicAudio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Icon(Icons.fast_rewind, color: black),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(fireboyApollo),
                    ),
                  ),
                  Icon(Icons.fast_forward, color: black),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 70,
              child: Text(
                "Fendi - Blagbones ft Joeboy",
                style: textTheme(context).overline,
              ),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.cancel, color: black)),
          ],
        ),
      ),
    );
  }
}

class ExploreContents extends StatelessWidget {
  const ExploreContents({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ExploreModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: width(context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data.topic,
                style: textTheme(context)
                    .subtitle2
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "See all",
                        style: textTheme(context)
                            .overline
                            ?.copyWith(color: goldColor),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: goldColor,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: height(context) * 0.3,
              width: width(context),
              margin: EdgeInsets.only(bottom: 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.topicMusics.length,
                itemBuilder: (context, index) {
                  return MusicAlbums(musics: data.topicMusics[index]);
                },
              )),
        ],
      ),
    );
  }
}

class MusicAlbums extends StatelessWidget {
  const MusicAlbums({Key? key, required this.musics}) : super(key: key);
  final ExploreMusics musics;
  @override
  Widget build(BuildContext context) {
    final containerHeight = 200.0;
    final containerWidth = 160.0;
    return InkWell(
      onLongPress: () {
        /* return Navigator.pushNamed(context, AirRoutesName.moneyRaitingScren,
            arguments: Size(containerWidth, containerHeight)); */
      },
      child: Container(
        height: containerHeight,
        width: containerWidth,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(),
        decoration: BoxDecoration(
            image: new DecorationImage(
              //this is always default as one
              image: AssetImage(musics.imagePicture),
              fit: BoxFit.fill,
            ),
            //color: Colors.yellow,
            borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          onTap: () {
            // print('object');
          },
          child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: MusicNameContainer(
                  musicName: musics.imagesname,
                ),
              )),
        ),
      ),
    );
  }
}

class MusicNameContainer extends StatelessWidget {
  const MusicNameContainer({
    Key? key,
    required this.musicName,
  }) : super(key: key);

  final String musicName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              musicName,
              style: textTheme(context).overline,
            ),
            CircleAvatar(
                radius: 9,
                backgroundColor: black,
                child: FittedBox(
                  child: Icon(
                    Icons.arrow_right_rounded,
                    color: white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
