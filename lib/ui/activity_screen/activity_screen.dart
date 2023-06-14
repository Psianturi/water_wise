import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/widget/custom_button.dart';
import 'package:water_supply/widget/custom_text_form_field.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}
class _ActivityScreenState extends State<ActivityScreen> {
  TextEditingController groupnineteenController = TextEditingController();

  TextEditingController grouptwentyoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 30, top: 16, right: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath:
                                    ImageConstant.imgArrowleftIndigo800,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(9),
                                    margin: getMargin(top: 14, bottom: 2),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(32),
                                    width: getHorizontalSize(90),
                                    text: "Download Report",
                                    variant: ButtonVariant.OutlineBluegray40001,
                                    fontStyle: ButtonFontStyle.PoppinsMedium8)
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 13),
                              padding: getPadding(left: 30, right: 30),
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 34),
                                        child: Text("Water Usage",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold18Bluegray700
                                                .copyWith(
                                                letterSpacing:
                                                getHorizontalSize(
                                                    1.0)))),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Row(children: [
                                          CustomButton(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(59),
                                              text: "Usage",
                                              variant: ButtonVariant
                                                  .OutlineBluegray400,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsMedium12),
                                          CustomButton(
                                              height: getVerticalSize(38),
                                              width: getHorizontalSize(62),
                                              text: "Trends",
                                              margin: getMargin(left: 16),
                                              variant:
                                              ButtonVariant.OutlineGray300,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsMedium12Gray400,
                                              onTap: () {
                                                onTapTrends(context);
                                              })
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Text("Water Meter : 12000",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular12Bluegray900
                                                .copyWith(
                                                letterSpacing:
                                                getHorizontalSize(
                                                    1.0)))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 13),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration.white
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
                                                  CustomButton(
                                                      height:
                                                      getVerticalSize(32),
                                                      width: getHorizontalSize(
                                                          100),
                                                      text:
                                                      "Request Technician",
                                                      variant: ButtonVariant
                                                          .OutlineRed400,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsMedium8Red400),
                                                  CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                      groupnineteenController,
                                                      hintText: "Kitchen",
                                                      margin:
                                                      getMargin(top: 11),
                                                      variant:
                                                      TextFormFieldVariant
                                                          .UnderLineGray300,
                                                      fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular12Gray800),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                      "High Usage",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular12RedA400
                                                                          .copyWith(
                                                                          letterSpacing: getHorizontalSize(1.0))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          2),
                                                                      child: Text(
                                                                          "Leak",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12RedA400
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 9,
                                                                    bottom:
                                                                    11),
                                                                child: Text(
                                                                    "120L",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12RedA400
                                                                        .copyWith(
                                                                        letterSpacing:
                                                                        getHorizontalSize(1.0))))
                                                          ]))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 12),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration.white
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
                                                  CustomButton(
                                                      height:
                                                      getVerticalSize(32),
                                                      width: getHorizontalSize(
                                                          110),
                                                      text:
                                                      "Technician Requested",
                                                      variant: ButtonVariant
                                                          .OutlineGray500,
                                                      fontStyle: ButtonFontStyle
                                                          .PoppinsMedium8Gray600),
                                                  Container(
                                                      width:
                                                      getHorizontalSize(66),
                                                      margin:
                                                      getMargin(top: 12),
                                                      child: Text(
                                                          "Bathroom Master",
                                                          maxLines: null,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12RedA400
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  1.0)))),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                          getVerticalSize(
                                                              1),
                                                          thickness:
                                                          getVerticalSize(
                                                              1),
                                                          color: ColorConstant
                                                              .gray300)),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                      "Average Usage",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular12RedA400
                                                                          .copyWith(
                                                                          letterSpacing: getHorizontalSize(1.0))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          2),
                                                                      child: Text(
                                                                          "Leak",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12RedA400
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 9,
                                                                    bottom:
                                                                    11),
                                                                child: Text(
                                                                    "50L",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12RedA400
                                                                        .copyWith(
                                                                        letterSpacing:
                                                                        getHorizontalSize(1.0))))
                                                          ]))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 12),
                                            padding: getPadding(all: 16),
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
                                                  CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      autofocus: true,
                                                      controller:
                                                      grouptwentyoneController,
                                                      hintText: "Laundry Room",
                                                      variant:
                                                      TextFormFieldVariant
                                                          .UnderLineGray300,
                                                      fontStyle:
                                                      TextFormFieldFontStyle
                                                          .PoppinsRegular12Gray800,
                                                      textInputAction:
                                                      TextInputAction.done),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                      "High Usage",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular12RedA400
                                                                          .copyWith(
                                                                          letterSpacing: getHorizontalSize(1.0))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          2),
                                                                      child: Text(
                                                                          "No Leak",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12RedA400
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 9,
                                                                    bottom:
                                                                    11),
                                                                child: Text(
                                                                    "50L",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12RedA400
                                                                        .copyWith(
                                                                        letterSpacing:
                                                                        getHorizontalSize(1.0))))
                                                          ]))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 12),
                                            padding:
                                            getPadding(left: 16, right: 16),
                                            decoration: AppDecoration.white
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder12),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      width:
                                                      getHorizontalSize(66),
                                                      margin:
                                                      getMargin(top: 16),
                                                      child: Text(
                                                          "Bathroom Common",
                                                          maxLines: null,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Gray800
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  1.0)))),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 13),
                                                      child: Divider(
                                                          height:
                                                          getVerticalSize(
                                                              1),
                                                          thickness:
                                                          getVerticalSize(
                                                              1),
                                                          color: ColorConstant
                                                              .gray300)),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                      "Low Usage",
                                                                      overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                      textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                      style: AppStyle
                                                                          .txtPoppinsRegular12Gray800
                                                                          .copyWith(
                                                                          letterSpacing: getHorizontalSize(1.0))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                          2),
                                                                      child: Text(
                                                                          "No Leak",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12Gray400
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                getPadding(
                                                                    top: 9,
                                                                    bottom:
                                                                    10),
                                                                child: Text(
                                                                    "30L",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12Bluegray700
                                                                        .copyWith(
                                                                        letterSpacing:
                                                                        getHorizontalSize(1.0))))
                                                          ]))
                                                ])))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTrends(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.activityTrendsScreen);
  }
}
