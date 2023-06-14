import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/widget/custom_button.dart';
import 'package:water_supply/widgets/custom_text_form_field.dart';



class PopupScreen extends StatefulWidget {
  const PopupScreen({Key? key}) : super(key: key);

  @override
  State<PopupScreen> createState() => _PopupScreenState();
}
// ignore_for_file: must_be_immutable
class _PopupScreenState extends State<PopupScreen> {
  TextEditingController promocodeinputController = TextEditingController();

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
                      Text("Payment Method",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold14
                              .copyWith(letterSpacing: getHorizontalSize(1.0))),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVisa1,
                                height: getVerticalSize(28),
                                width: getHorizontalSize(45)),
                            Padding(
                                padding:
                                getPadding(left: 16, top: 2, bottom: 4),
                                child: Text("••••  ••••  ••••  1324",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold14
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0)))),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgDown2,
                                height: getVerticalSize(9),
                                width: getHorizontalSize(10),
                                margin: getMargin(top: 9, bottom: 9))
                          ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Enter Promo Code",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: promocodeinputController,
                                    hintText: "Enter your code",
                                    margin: getMargin(top: 4),
                                    textInputAction: TextInputAction.done)
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Payment Summary",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold14.copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Padding(
                          padding: getPadding(top: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("Top up",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12Gray400
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.6)))),
                                Text("20",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold14
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0)))
                              ])),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1, bottom: 1),
                                    child: Text("Admin Fee",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular12Gray400
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(0.6)))),
                                Text("0.5",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold14
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0)))
                              ])),
                      Padding(
                          padding: getPadding(top: 3),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsSemiBold14Bluegray700
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0))),
                                Text("20.5",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsSemiBold14Bluegray700
                                        .copyWith(
                                        letterSpacing:
                                        getHorizontalSize(1.0)))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(51),
                width: getHorizontalSize(208),
                text: "Top Up Now",
                margin: getMargin(left: 83, right: 83, bottom: 30),
                onTap: () {
                  onTapTopupnow(context);
                })));
  }

  onTapTopupnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.successTransactionsScreen);
  }
}
