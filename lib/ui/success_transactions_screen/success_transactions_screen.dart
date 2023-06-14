import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/widget/custom_button.dart';

class SuccessTransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray400,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 48, top: 100, right: 48),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIllustration,
                          height: getSize(278),
                          width: getSize(278)),
                      Padding(
                          padding: getPadding(top: 59),
                          child: Text("Transaction Success",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold18WhiteA700
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Container(
                          width: getHorizontalSize(265),
                          margin: getMargin(left: 7, top: 17, right: 7),
                          child: Text(
                              "Yes! Enjoy your bill.\nDon’t forget to give us feedback!\n\nYou may check your history.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular16.copyWith(
                                  letterSpacing: getHorizontalSize(0.16)))),
                      CustomButton(
                          height: getVerticalSize(51),
                          text: "Back to Home",
                          margin: getMargin(
                              left: 27, top: 37, right: 26, bottom: 5),
                          variant: ButtonVariant.OutlineDeeppurpleA200,
                          fontStyle: ButtonFontStyle.PoppinsMedium18Bluegray700,
                          onTap: () {
                            onTapBacktohome(context);
                          })
                    ]))));
  }

  onTapBacktohome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
