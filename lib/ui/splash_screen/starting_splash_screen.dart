import 'dart:async';

import 'package:flutter/material.dart';
import 'package:water_supply/ui/intro_screen/intro_screen.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../widget/custom_image_view.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}
class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }
  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 3);
    return Timer(durasiSplash, () {
      //pindah ke halaman intro screen
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return IntroScreen();
          })
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.1,
                0,
              ),
              end: Alignment(
                0.64,
                1.02,
              ),
              colors: [
                ColorConstant.blueGray700,
                ColorConstant.blueGray500,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              top: 46,
              bottom: 46,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getSize(
                      50,
                    ),
                    width: getSize(
                      50,
                    ),
                    margin: getMargin(
                      right: 40,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA7005e,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          25,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    500,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 60,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse6,
                        height: getVerticalSize(
                          500,
                        ),
                        width: getHorizontalSize(
                          375,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWaterwiselogo,
                        height: getVerticalSize(
                          62,
                        ),
                        width: getHorizontalSize(
                          303,
                        ),
                        alignment: Alignment.topCenter,
                        margin: getMargin(
                          top: 194,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getSize(
                    87,
                  ),
                  width: getSize(
                    87,
                  ),
                  margin: getMargin(
                    left: 11,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA7005e,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        43,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
