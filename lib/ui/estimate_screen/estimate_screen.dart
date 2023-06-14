import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';

class EstimateScreen extends StatefulWidget {
  const EstimateScreen({Key? key}) : super(key: key);

  @override
  State<EstimateScreen> createState() => _EstimateScreenState();
}
// ignore_for_file: must_be_immutable
class _EstimateScreenState extends State<EstimateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, top: 30, right: 14, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(16),
                          width: getHorizontalSize(9),
                          margin: getMargin(left: 16),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Padding(
                          padding: getPadding(left: 16, top: 31),
                          child: Text("Your Usage Estimation",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18Gray800
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(39),
                              width: getHorizontalSize(316),
                              margin: getMargin(top: 27),
                              child:
                              Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("200L",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold18Indigo100
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text("200",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold18Gray800
                                                  .copyWith(
                                                  letterSpacing:
                                                  getHorizontalSize(
                                                      1.0))),
                                          Padding(
                                              padding: getPadding(top: 10),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant.gray300,
                                                  endIndent:
                                                  getHorizontalSize(1)))
                                        ]))
                              ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 64, bottom: 5),
                              padding: getPadding(
                                  left: 15, top: 13, right: 15, bottom: 13),
                              decoration: AppDecoration.fillBluegray400
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(107),
                                        margin: getMargin(left: 1),
                                        child: Text("Manual \nEstimation",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold18WhiteA700
                                                .copyWith(
                                                letterSpacing:
                                                getHorizontalSize(
                                                    1.0)))),
                                    Container(
                                        height: getVerticalSize(38),
                                        width: getHorizontalSize(316),
                                        margin: getMargin(
                                            left: 1, top: 26, bottom: 15),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding:
                                                      getPadding(top: 1),
                                                      child: Text(
                                                          "Insert Usage in L",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold18Indigo100
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  1.0))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                      mainAxisSize:
                                                      MainAxisSize.min,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .end,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                      children: [
                                                        Text("200",
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                            TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsSemiBold18WhiteA700
                                                                .copyWith(
                                                                letterSpacing:
                                                                getHorizontalSize(
                                                                    1.0))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Divider(
                                                                height:
                                                                getVerticalSize(
                                                                    1),
                                                                thickness:
                                                                getVerticalSize(
                                                                    1),
                                                                color:
                                                                ColorConstant
                                                                    .gray300,
                                                                endIndent:
                                                                getHorizontalSize(
                                                                    1)))
                                                      ]))
                                            ]))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
