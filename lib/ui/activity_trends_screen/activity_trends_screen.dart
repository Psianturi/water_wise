import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import '../../app_bar/appbar_image.dart';
import '../../app_bar/custom_app_bar.dart';
import '../../widget/custom_button.dart';


class ActivityTrendsScreen extends StatefulWidget {
  const ActivityTrendsScreen({Key? key}) : super(key: key);

  @override
  State<ActivityTrendsScreen> createState() => _ActivityTrendsScreenState();
}
class _ActivityTrendsScreenState extends State<ActivityTrendsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                leadingWidth: 39,
                leading: Container(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(9),
                    margin: getMargin(left: 30, top: 26, bottom: 14),
                    child: Stack(alignment: Alignment.center, children: [
                      AppbarImage(
                          height: getVerticalSize(16),
                          width: getHorizontalSize(9),
                          svgPath: ImageConstant.imgArrowleftIndigo800,
                          onTap: () {
                            onTapArrowleft(context);
                          }),
                      AppbarImage(
                          height: getVerticalSize(16),
                          width: getHorizontalSize(9),
                          svgPath: ImageConstant.imgArrowleftIndigo800)
                    ])),
                actions: [
                  CustomButton(
                      height: getVerticalSize(32),
                      width: getHorizontalSize(90),
                      text: "Download Report",
                      margin:
                      getMargin(left: 18, top: 12, right: 18, bottom: 12),
                      variant: ButtonVariant.OutlineBluegray40001,
                      fontStyle: ButtonFontStyle.PoppinsMedium8)
                ]),
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    margin: getMargin(top: 1),
                    padding:
                    getPadding(left: 30, top: 34, right: 30, bottom: 34),
                    decoration: AppDecoration.fillGray50,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Water Usage",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18Bluegray700
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0))),
                          Padding(
                              padding: getPadding(top: 9),
                              child: Row(children: [
                                CustomButton(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(59),
                                    text: "Usage",
                                    variant: ButtonVariant.OutlineGray300,
                                    fontStyle:
                                    ButtonFontStyle.PoppinsMedium12Gray400,
                                    onTap: () {
                                      onTapUsage(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(38),
                                    width: getHorizontalSize(62),
                                    text: "Trends",
                                    margin: getMargin(left: 16),
                                    variant: ButtonVariant.OutlineBluegray400,
                                    fontStyle: ButtonFontStyle.PoppinsMedium12)
                              ])),
                          Padding(
                              padding: getPadding(top: 11),
                              child: Text("Water Meter : 12000",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12Bluegray900
                                      .copyWith(
                                      letterSpacing:
                                      getHorizontalSize(1.0)))),
                          Container(
                              margin: getMargin(
                                  left: 1, top: 30, right: 7, bottom: 5),
                              padding: getPadding(
                                  left: 24, top: 25, right: 24, bottom: 25),
                              decoration: AppDecoration.outlineBlack9003f1
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 49),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(2),
                                                  width: getHorizontalSize(35),
                                                  margin: getMargin(
                                                      top: 7, bottom: 6),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .lightBlueA700,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text("Line One",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular1333
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.16)))),
                                              Container(
                                                  height: getVerticalSize(2),
                                                  width: getHorizontalSize(35),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 7,
                                                      bottom: 6),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .orange500,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              1)))),
                                              Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text("Line Two",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular1333
                                                          .copyWith(
                                                          letterSpacing:
                                                          getHorizontalSize(
                                                              0.16))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 14, bottom: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 2, bottom: 20),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text("3.00",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterRegular123)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                getPadding(
                                                                    top:
                                                                    25),
                                                                child: Text(
                                                                    "2.50",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular123))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                getPadding(
                                                                    top:
                                                                    25),
                                                                child: Text(
                                                                    "2.00",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular123))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 25),
                                                            child: Text("1.50",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterRegular123)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 25),
                                                            child: Text("1.00",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: AppStyle
                                                                    .txtInterRegular123)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                getPadding(
                                                                    top:
                                                                    25),
                                                                child: Text(
                                                                    "0.50",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular123)))
                                                      ])),
                                              Expanded(
                                                  child: Padding(
                                                      padding:
                                                      getPadding(left: 12),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                getVerticalSize(
                                                                    49),
                                                                width:
                                                                getHorizontalSize(
                                                                    218),
                                                                child: Stack(
                                                                    alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(8),
                                                                              width: getHorizontalSize(218),
                                                                              decoration: BoxDecoration(color: ColorConstant.whiteA700))),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgFrame2035,
                                                                          height: getVerticalSize(
                                                                              41),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment:
                                                                          Alignment.bottomCenter)
                                                                    ])),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgFrame2035,
                                                                height:
                                                                getVerticalSize(
                                                                    41),
                                                                width:
                                                                getHorizontalSize(
                                                                    218)),
                                                            Container(
                                                                height:
                                                                getVerticalSize(
                                                                    123),
                                                                width:
                                                                getHorizontalSize(
                                                                    219),
                                                                child: Stack(
                                                                    alignment:
                                                                    Alignment
                                                                        .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgFrame2035,
                                                                          height: getVerticalSize(
                                                                              41),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment:
                                                                          Alignment.topCenter),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgFrame2035,
                                                                          height: getVerticalSize(
                                                                              41),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment:
                                                                          Alignment.center),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgFrame2035,
                                                                          height: getVerticalSize(
                                                                              41),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment:
                                                                          Alignment.bottomCenter),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLine4,
                                                                          height: getVerticalSize(
                                                                              74),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          margin:
                                                                          getMargin(bottom: 3)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLine3,
                                                                          height: getVerticalSize(
                                                                              74),
                                                                          width: getHorizontalSize(
                                                                              218),
                                                                          alignment: Alignment
                                                                              .topCenter,
                                                                          margin:
                                                                          getMargin(top: 6))
                                                                    ])),
                                                            CustomImageView(
                                                                svgPath:
                                                                ImageConstant
                                                                    .imgFrame2033,
                                                                height:
                                                                getVerticalSize(
                                                                    8),
                                                                width:
                                                                getHorizontalSize(
                                                                    218)),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    left:
                                                                    15,
                                                                    top: 2,
                                                                    right:
                                                                    18),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                              1),
                                                                          child: Text(
                                                                              "Aug 30",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular123)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                              30,
                                                                              top:
                                                                              1),
                                                                          child: Text(
                                                                              "Sep 30",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular123)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                              33,
                                                                              bottom:
                                                                              1),
                                                                          child: Text(
                                                                              "Oct 31",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular123))
                                                                    ]))
                                                          ])))
                                            ]))
                                  ]))
                        ])))));
  }

  onTapUsage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.activityScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
