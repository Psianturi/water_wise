import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/widget/custom_button.dart';

class VouchersScreen extends StatefulWidget {
  const VouchersScreen({Key? key}) : super(key: key);

  @override
  State<VouchersScreen> createState() => _VouchersScreenState();
}
// ignore_for_file: must_be_immutable
class _VouchersScreenState extends State<VouchersScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, top: 32, right: 14, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          width: getHorizontalSize(159),
                          text: "  My Vouchers",
                          margin: getMargin(left: 16),
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold18,
                          prefixWidget: Container(
                              margin: getMargin(right: 21),
                              child: CustomImageView(
                                  svgPath:
                                  ImageConstant.imgArrowleftIndigo800)),
                          onTap: () {
                            onTapMyvouchers(context);
                          }),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(left: 1, top: 48),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getVerticalSize(114),
                              width: getHorizontalSize(345),
                              padding: getPadding(
                                  left: 15, top: 9, right: 15, bottom: 9),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder20),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      width: double.maxFinite,
                                                      child: Container(
                                                          width:
                                                          getHorizontalSize(
                                                              315),
                                                          margin: getMargin(
                                                              top: 34),
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16,
                                                              bottom: 10),
                                                          decoration: AppDecoration
                                                              .outlineGray300
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .min,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Text("TENOFF",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12Bluegray40001)
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("10 Dollar off",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsSemiBold20))
                                  ]))),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 23, bottom: 5),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Container(
                              height: getVerticalSize(114),
                              width: getHorizontalSize(345),
                              padding: getPadding(
                                  left: 15, top: 9, right: 15, bottom: 9),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder20),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      width: double.maxFinite,
                                                      child: Container(
                                                          width:
                                                          getHorizontalSize(
                                                              315),
                                                          margin: getMargin(
                                                              top: 34),
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 10,
                                                              right: 16,
                                                              bottom: 10),
                                                          decoration: AppDecoration
                                                              .outlineGray300
                                                              .copyWith(
                                                              borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                              MainAxisSize
                                                                  .min,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Text("TENOFF",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12Bluegray40001)
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("10 Dollar off",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsSemiBold20))
                                  ])))
                    ]))));
  }

  onTapMyvouchers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
