import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_checkbox.dart';
import '../../widgets/custom_text_form_field.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

// ignore_for_file: must_be_immutable
class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  bool isCheckbox = false;

  bool isCheckbox1 = false;

  bool isCheckbox2 = false;

  TextEditingController frameoneController = TextEditingController();

  TextEditingController frameoneoneController = TextEditingController();

  TextEditingController frameonetwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 30, top: 32, right: 30, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          text: "    Payment Methods",
                          margin: getMargin(right: 93),
                          shape: ButtonShape.Square,
                          fontStyle: ButtonFontStyle.PoppinsSemiBold18,
                          prefixWidget: Container(
                              margin: getMargin(right: 30),
                              child: CustomImageView(
                                  svgPath:
                                  ImageConstant.imgArrowleftIndigo800)),
                          onTap: () {
                            onTapPaymentmethods(context);
                          }),
                      Padding(
                          padding: getPadding(top: 42),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                            getHorizontalSize(1.0))))
                              ])),
                      CustomCheckbox(
                          text: "Default",
                          iconSize: getHorizontalSize(11),
                          value: isCheckbox,
                          margin: getMargin(top: 15),
                          fontStyle: CheckboxFontStyle.PoppinsRegular8,
                          onChange: (value) {
                            isCheckbox = value;
                          }),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                            getHorizontalSize(1.0))))
                              ])),
                      CustomCheckbox(
                          text: "Set as default",
                          iconSize: getHorizontalSize(11),
                          value: isCheckbox1,
                          margin: getMargin(top: 15),
                          fontStyle: CheckboxFontStyle.PoppinsRegular8,
                          onChange: (value) {
                            isCheckbox1 = value;
                          }),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                            getHorizontalSize(1.0))))
                              ])),
                      CustomCheckbox(
                          text: "Set as default",
                          iconSize: getHorizontalSize(11),
                          value: isCheckbox2,
                          margin: getMargin(top: 15),
                          fontStyle: CheckboxFontStyle.PoppinsRegular8,
                          onChange: (value) {
                            isCheckbox2 = value;
                          }),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 68),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Card Number",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: frameoneController,
                                    margin: getMargin(top: 4))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Expiry Date",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold12),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: frameoneoneController,
                                    margin: getMargin(top: 3))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("CVV",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold12),
                                    CustomTextFormField(
                                        width: getHorizontalSize(150),
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: frameonetwoController,
                                        margin: getMargin(top: 4),
                                        textInputAction: TextInputAction.done)
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(51),
                          width: getHorizontalSize(137),
                          text: "Add",
                          margin: getMargin(top: 20, bottom: 5),
                          alignment: Alignment.center)
                    ]))));
  }

  onTapPaymentmethods(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
