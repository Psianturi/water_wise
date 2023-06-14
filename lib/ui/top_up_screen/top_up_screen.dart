import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/widget/custom_button.dart';

class TopUpScreen extends StatefulWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  State<TopUpScreen> createState() => _TopUpScreenState();
}
// ignore_for_file: must_be_immutable
class _TopUpScreenState extends State<TopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(16),
                          width: getHorizontalSize(9),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Container(
                          width: getHorizontalSize(149),
                          margin: getMargin(top: 32),
                          child: Text("Top up your\nwallet balance",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18Gray800
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Text("Insert an amount (Min Rp.10,000)",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.6)))),
                      Container(
                          height: getVerticalSize(39),
                          width: getHorizontalSize(315),
                          margin: getMargin(top: 29),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text("",
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("0",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsSemiBold18Gray800
                                              .copyWith(
                                              letterSpacing:
                                              getHorizontalSize(1.0))),
                                      Padding(
                                          padding: getPadding(top: 11),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.gray300))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18Gray800
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Text("Instant amount",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.6)))),
                      Padding(
                          padding: getPadding(top: 30),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(12),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(38),
                                  fieldWidth: getHorizontalSize(28),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8)),
                                  selectedFillColor:
                                  ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                  ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                  ColorConstant.fromHex("#1212121D"),
                                  inactiveColor: ColorConstant.gray300,
                                  selectedColor: ColorConstant.gray300,
                                  activeColor: ColorConstant.gray300))),
                      Padding(
                          padding: getPadding(top: 16, bottom: 5),
                          child: Row(children: [
                            Container(
                                decoration: AppDecoration.white,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 10,
                                              top: 9,
                                              right: 10,
                                              bottom: 9),
                                          decoration: AppDecoration
                                              .outlineGray300
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle
                                                  .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("50",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium12Gray400)
                                              ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                decoration: AppDecoration.white,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 10,
                                              top: 9,
                                              right: 10,
                                              bottom: 9),
                                          decoration: AppDecoration
                                              .outlineGray300
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle
                                                  .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("100",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium12Gray400)
                                              ]))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                decoration: AppDecoration.white,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 10,
                                              top: 9,
                                              right: 10,
                                              bottom: 9),
                                          decoration: AppDecoration
                                              .outlineGray300
                                              .copyWith(
                                              borderRadius:
                                              BorderRadiusStyle
                                                  .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Text("150",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsMedium12Gray400)
                                              ]))
                                    ]))
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(51),
                width: getHorizontalSize(184),
                text: "Continue",
                margin: getMargin(left: 95, right: 96, bottom: 30),
                onTap: () {
                  onTapContinue(context);
                })));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popUpScreen);
  }
}
