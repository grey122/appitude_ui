import 'package:appitude_ui/botttom_nav_bar_controller.dart';
import 'package:appitude_ui/constants/routes/app_pages.dart';
import 'package:appitude_ui/constants/screen_const.dart';
import 'package:appitude_ui/model/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetScreen extends StatelessWidget {
  final controller = Get.put(BottomNavBarCtr());
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(builder: (context, delegate, currentRoute) {
      final currentLocation = currentRoute?.location;
      var currentIndex = 0;

      if (currentLocation?.startsWith(Routes.EXPLORE) == true) {
        currentIndex = 1;
      }
      if (currentLocation?.startsWith(Routes.GALLERY) == true) {
        currentIndex = 2;
      }
      if (currentLocation?.startsWith(Routes.ACTIVITY) == true) {
        currentIndex = 3;
      }
      if (currentLocation?.startsWith(Routes.USER_PROFILE) == true) {
        currentIndex = 4;
      }
      return Scaffold(
        // appBar: AppBar(
        //   title: Text("Scaffold"),
        // ),
        backgroundColor: Colors.white,

        body: GetRouterOutlet(
          initialRoute: Routes.HOME,
          // anchorRoute: Routes.HOME,
          key: Get.nestedKey(Routes.INTITIAL),
        ),
        bottomNavigationBar: Obx(
          () => NavBAr(
              currentIndex: currentIndex,
              delegate: delegate,
              isVissible: controller.isVisible.value),
        ),

        floatingActionButton: Container(
          width: width(context),
          margin: EdgeInsets.only(bottom: 56.5),
          child: FloatingActionButton(
            elevation: 0.0,
            onPressed: () {},
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
            backgroundColor: white,
            shape: RoundedRectangleBorder(),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}

class NavBAr extends StatefulWidget {
  NavBAr({
    Key? key,
    required this.currentIndex,
    required this.delegate,
    required this.isVissible,
  }) : super(key: key);

  final int currentIndex;
  final GetDelegate delegate;
  final bool isVissible;

  @override
  _NavBArState createState() => _NavBArState();
}

class _NavBArState extends State<NavBAr> {
  // List<XFile>? _imageFileList;

  @override
  Widget build(BuildContext context) {
    var iconSize = 29.0;
    return ScrollToHideWidget(
      isVisible: widget.isVissible,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: black,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            //
          ),
          child: BottomNavigationBar(
            onTap: (int index) {
              print("current index $index");
              switch (index) {
                case 0:
                  // for now we will pass the value to the home through arguments
                  // moving foward we will set it so the controller can be gotten from any of its child widgets

                  widget.delegate.toNamed(Routes.HOME);
                  break;
                case 1:
                  widget.delegate.toNamed(Routes.EXPLORE);
                  break;
                case 2:
                  // get the image here
                  widget.delegate.toNamed(Routes.EXPLORE);

                  // widget.delegate.toNamed(Routes.GALLERY);
                  break;
                case 3:
                  widget.delegate.toNamed(Routes.ACTIVITY);
                  break;
                case 4:
                  widget.delegate.toNamed(Routes.USER_PROFILE);
                  break;
                default:
              }
            },
            currentIndex: widget.currentIndex,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            backgroundColor: black,
            items: [
              BottomNavigationBarItem(
                activeIcon: FaIcon(
                  FontAwesomeIcons.searchengin,
                  color: goldColor,
                  size: iconSize,
                ),
                label: "Explore",
                icon: FaIcon(
                  FontAwesomeIcons.searchengin,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: "stars",
                activeIcon: FaIcon(
                  FontAwesomeIcons.starHalf,
                  color: goldColor,
                  size: iconSize,
                ),
                icon: FaIcon(
                  FontAwesomeIcons.starHalf,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: FaIcon(
                  FontAwesomeIcons.lightbulb,
                  size: iconSize + 8,
                  color: goldColor,
                ),
                label: "Gallery",
                icon: FaIcon(
                  FontAwesomeIcons.lightbulb,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: FaIcon(
                  FontAwesomeIcons.dollarSign,
                  color: goldColor,
                  size: iconSize,
                ),
                label: "Activity",
                icon: FaIcon(
                  FontAwesomeIcons.dollarSign,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: iconSize,
                  ),
                  label: "Profile",
                  icon: Icon(Icons.person, color: Colors.grey)

                  //icon: Icon(MdiIcons.faceProfile, color: Colors.grey),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollToHideWidget extends StatelessWidget {
  const ScrollToHideWidget(
      {Key? key, required this.isVisible, required this.child})
      : super(key: key);

  final Widget child;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      child: Wrap(children: [child]),
      height: isVisible ? kBottomNavigationBarHeight : 0,
    );
  }
}
