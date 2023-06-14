import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widget/custom_text_form_field.dart';


class ViewBillScreen extends StatefulWidget {
  const ViewBillScreen({Key? key}) : super(key: key);

  @override
  State<ViewBillScreen> createState() => _ViewBillScreenState();
}
// ignore_for_file: must_be_immutable
class _ViewBillScreenState extends State <ViewBillScreen> {
  TextEditingController groupfortytwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 30, right: 16, bottom: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: "assets/images/img_arrowleft_indigo_800.svg",
                          height: getVerticalSize(16),
                          width: getHorizontalSize(9),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 14),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 98, top: 34),
                              child: Text("Bill Summary",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPoppinsSemiBold18Bluegray700
                                      .copyWith(
                                      letterSpacing:
                                      getHorizontalSize(1.0))))),
                      Container(
                          margin: getMargin(left: 14, top: 25, right: 14),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(66),
                                    child: Text("Bathroom Common",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12Gray800
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0)))),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.blueGray40001)),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Usage",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Gray800
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("30L",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Bluegray700
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rate",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("1.19",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Amount",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("20",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 14, top: 18, right: 14),
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(66),
                                    child: Text("Kitchen",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12Gray800
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0)))),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Usage",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Gray800
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("30L",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Bluegray700
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rate",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("1.19",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Amount",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("20",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 14, top: 29, right: 14),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(66),
                                    child: Text("Bathroom Master",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12Gray800
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0)))),
                                Padding(
                                    padding: getPadding(top: 13),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.blueGray40001)),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Usage",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Gray800
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("30L",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Bluegray700
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          1.0))))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Rate",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("1.19",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Amount",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Text("20",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Bluegray700
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0)))
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(left: 1, top: 45, bottom: 5),
                          padding: getPadding(
                              left: 10, top: 1, right: 10, bottom: 1),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Total(Include GST)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold14Bluegray700
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0)))),
                                Padding(
                                    padding: getPadding(right: 7),
                                    child: Text("170",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold14Bluegray700
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0))))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
