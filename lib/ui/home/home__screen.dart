import 'package:flutter/material.dart';
import 'package:water_supply/ui/home/widgets/home_item_widget.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import '../../app_bar/appbar_circleimage.dart';
import '../../app_bar/appbar_subtitle.dart';
import '../../app_bar/appbar_title.dart';
import '../../app_bar/custom_app_bar.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widget/custom_icon_button.dart';
import '../../widget/custom_image_view.dart';
import '../../widget/custom_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String profile_name = '';
  String profile_photo ='';

  @override
  void initState() {
    super.initState();
    fetchTextFromBackend();
    fetchTextProfilePhoto();
  }

//fetch cust name
  Future<void> fetchTextFromBackend() async {
    try {
      var response = await http.get(Uri.parse('http://192.168.1.14/water_wise/profile_name.php'));
      if (response.statusCode == 200) {
        setState(() {
          profile_name = response.body;
        });
      } else {
        setState(() {
          profile_name = 'Failed to retrieve text.';
        });
      }
    } catch (e) {
      setState(() {
        profile_name = 'Failed to retrieve text.';
      });
    }
  }

  //cust photo path
  Future<void> fetchTextProfilePhoto() async {
    try {
      var response = await http.get(Uri.parse('http://192.168.1.14/water_wise/profile_photo.php'));
      if (response.statusCode == 200) {
        setState(() {
          profile_photo = response.body;
        });
      } else {
        setState(() {
          profile_photo = 'Failed to retrieve text.';
        });
      }
    } catch (e) {
      setState(() {
        profile_photo = 'Failed to retrieve text.';
      });
    }
  }

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Placeholder(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(83),
                title: Padding(
                    padding: getPadding(left: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarTitle(text: "Hi, $profile_name"),
                          AppbarSubtitle(
                              text: "Welcome!", margin: getMargin(right: 34))
                        ])),
                actions: [
                  AppbarCircleimage(
                      // imagePath: "$profile_photo",
                      imagePath: "assets/images/img_girl.png",
                      margin: getMargin(left: 30, top: 3, right: 30, bottom: 3),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.profileScreen);
                      }
                  )
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 30, top: 27, right: 30),
                          padding: getPadding(
                              left: 119, top: 28, right: 119, bottom: 28),
                          decoration: AppDecoration.green.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Balance",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0))),
                                Padding(
                                    padding: getPadding(top: 4),
                                    child: Text("200",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold30
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.3)))),
                                CustomIconButton(
                                    height: 45,
                                    width: 45,
                                    margin: getMargin(top: 30),
                                    variant: IconButtonVariant.White,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgBag)),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Text("Top Up",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12WhiteA700
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.12))))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 30, top: 21),
                              child: Text("Pay Bill",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18.copyWith(
                                      letterSpacing: getHorizontalSize(1.0))))),
                      Padding(
                          padding: getPadding(left: 30, top: 10, right: 30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapWater(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              CustomIconButton(
                                                  height: 45,
                                                  width: 45,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgAir1)),
                                              Padding(
                                                  padding: getPadding(top: 11),
                                                  child: Text("Estimate",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Gray800
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.6))))
                                            ]))),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin:
                                          getMargin(left: 18, right: 18),
                                          padding: getPadding(
                                              left: 13,
                                              top: 11,
                                              right: 13,
                                              bottom: 11),
                                          decoration: AppDecoration
                                              .fillBluegray40001
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle
                                                  .roundedBorder12),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Card(
                                                    clipBehavior:
                                                    Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color:
                                                    ColorConstant.indigo800,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder5),
                                                    child: Container(
                                                        height:
                                                        getVerticalSize(23),
                                                        width:
                                                        getHorizontalSize(
                                                            18),
                                                        decoration: AppDecoration
                                                            .fillIndigo800
                                                            .copyWith(
                                                            borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder5),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath:
                                                              ImageConstant
                                                                  .imgMobile,
                                                              height:
                                                              getVerticalSize(
                                                                  23),
                                                              width:
                                                              getHorizontalSize(
                                                                  18),
                                                              alignment:
                                                              Alignment
                                                                  .center)
                                                        ])))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 13),
                                          child: Text("Marketplace",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      0.6))))
                                    ]),
                                GestureDetector(
                                    onTap: () {
                                      onTapInvest(context);
                                    },
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 45,
                                              width: 45,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLamp)),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("Usage",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Gray800
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          0.6))))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 18),
                              padding: getPadding(
                                  left: 30, top: 14, right: 30, bottom: 14),
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Last Transaction",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold18Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtSmalllabelheavy(
                                                    context);
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: Text("Details",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold12Bluegray700)))
                                        ]),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin:
                                            getMargin(top: 12, bottom: 15),
                                            padding: getPadding(
                                                left: 16,
                                                top: 15,
                                                right: 16,
                                                bottom: 15),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  TextFormField(
                                                    focusNode: FocusNode(),
                                                    autofocus: true,
                                                    controller: dateController,
                                                    enabled: false, // Set enabled to false to make it uneditable
                                                    decoration: InputDecoration(
                                                      hintText: "Insert Date",
                                                      enabledBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.grey[300]!),
                                                      ),
                                                      focusedBorder: UnderlineInputBorder(
                                                        borderSide: BorderSide(color: Colors.grey[300]!),
                                                      ),
                                                    ),
                                                    style: TextStyle(
                                                      fontFamily: 'PoppinsRegular',
                                                      fontSize: 12,
                                                      color: Colors.grey[800],
                                                    ),
                                                    textInputAction: TextInputAction.done,
                                                  ),

                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: ListView.separated(
                                                          physics:
                                                          NeverScrollableScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                getVerticalSize(
                                                                    12));
                                                          },
                                                          itemCount: 2,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return HomeItemWidget();
                                                          }))
                                                ])))
                                  ])))
                    ])))
    );
  }

  onTapWater(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.estimateScreen);
  }

  onTapInvest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.activityScreen);
  }

  onTapTxtSmalllabelheavy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.activityScreen);
  }
}
