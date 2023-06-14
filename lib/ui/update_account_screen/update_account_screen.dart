import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  TextEditingController lastnameController = TextEditingController();


  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar:
            AppBar(
              backgroundColor: Color(0xFFFFFFFF),
              leading: IconButton(
                icon: SvgPicture.asset(
                  'assets/images/img_arrowleft_indigo_800.svg',
                  color: Color(0xFF4A6964),
                ),
                onPressed: () {
                  // Implement your desired functionality for the back button
                },
              ),
              title: Text(
                'Update Account',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Color(0xFF404040),
                ),
              ),
              actions: [
              ],
            ),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                    getPadding(left: 30, right: 30, bottom: 32),
                    child: Column(
                        mainAxisSize: MainAxisSize.min, // Set the mainAxisSize to min
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // AppBar(
                          //   backgroundColor: Color(0xFFFFFFFF),
                          //   leading: IconButton(
                          //     icon: SvgPicture.asset(
                          //       'assets/images/img_arrowleft_indigo_800.svg',
                          //       color: Color(0xFF4A6964),
                          //     ),
                          //     onPressed: () {
                          //       // Implement your desired functionality for the back button
                          //     },
                          //   ),
                          //   title: Text(
                          //     'Update Account',
                          //     style: TextStyle(
                          //       fontSize: 18,
                          //       fontWeight: FontWeight.w600,
                          //         fontFamily: 'Poppins',
                          //       color: Color(0xFF404040),
                          //     ),
                          //   ),
                          //   actions: [
                          //   ],
                          // ),

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
                                              hintText: "First name ",
                                              margin: getMargin(top: 4)),
                                          CustomTextFormField(
                                              width: getHorizontalSize(150),
                                              autofocus: true,
                                              controller: lastnameController,
                                              hintText: "Last name",
                                              margin: getMargin(top: 4))
                                        ]),
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
                                        TextInputType.emailAddress),
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
