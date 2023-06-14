import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_form_field.dart';



class UpdateAccountScreen extends StatefulWidget {
  const UpdateAccountScreen({Key? key}) : super(key: key);

  @override
  State<UpdateAccountScreen> createState() => _UpdateAccountScreenState();
}
// ignore_for_file: must_be_immutable
class _UpdateAccountScreenState extends State<UpdateAccountScreen> {
  TextEditingController firstnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                    getPadding(left: 30, top: 32, right: 30, bottom: 32),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              width: getHorizontalSize(202),
                              text: "    Update Account",
                              shape: ButtonShape.Square,
                              fontStyle: ButtonFontStyle.PoppinsSemiBold18,
                              prefixWidget: Container(
                                  margin: getMargin(right: 30),
                                  child: CustomImageView(
                                      svgPath:"assets/images/img_arrowleft_indigo_800.svg"
                                  )),
                              onTap: () {
                                onTapUpdateaccount(context);
                              }),
                          Padding(
                              padding: getPadding(top: 76),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text("Full Name",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold12),
                                          CustomTextFormField(
                                              width: getHorizontalSize(150),
                                              focusNode: FocusNode(),
                                              autofocus: true,
                                              controller: firstnameController,
                                              hintText: "First name",
                                              margin: getMargin(top: 4))
                                        ]),
                                    Container(
                                        width: getHorizontalSize(150),
                                        margin: getMargin(top: 22),
                                        padding: getPadding(
                                            left: 16,
                                            top: 10,
                                            right: 16,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .txtOutlineGray300
                                            .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder8),
                                        child: Text("Last name",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            AppStyle.txtPoppinsRegular12))
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold12),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: emailController,
                                        hintText: "Enter your email",
                                        margin: getMargin(top: 4),
                                        textInputType:
                                        TextInputType.emailAddress)
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsSemiBold12),
                                    CustomTextFormField(
                                        focusNode: FocusNode(),
                                        autofocus: true,
                                        controller: passwordController,
                                        hintText: "Password here",
                                        margin: getMargin(top: 4),
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                        TextInputType.visiblePassword,
                                        isObscureText: true)
                                  ])),
                          CustomButton(
                              height: getVerticalSize(51),
                              width: getHorizontalSize(145),
                              text: "Save",
                              margin: getMargin(top: 51, bottom: 5),
                              alignment: Alignment.center)
                        ])))));
  }

  onTapUpdateaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
