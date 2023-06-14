import 'package:flutter/material.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import 'package:mysql1/mysql1.dart';
import '../../routes/app_routes.dart';
import 'package:http/http.dart' as http;
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_image_view.dart';
import '../../widget/custom_text_form_field.dart';


// ignore_for_file: must_be_immutable
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController firstnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void registerUser(String name, String email, String password) async {
    var url = 'http://192.168.1.14/water_wise/register_config.php';
    var response = await http.post( Uri.parse(url) ,
        body: {
      'name': name,
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      print('success');
      Navigator.pushNamed(context, AppRoutes.homeScreen);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registrasi Berhasil!')),
      );
    } else {
      print('failed bye');
    }
  }

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
                        getPadding(left: 29, top: 30, right: 29, bottom: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 1),
                              child: Text("Create Your Account",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold18.copyWith(
                                      letterSpacing: getHorizontalSize(1.0)))),
                          Padding(
                              padding: getPadding(left: 1),
                              child: Text(
                                  "Create your account to start journey",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(0.6)))),
                          CustomImageView(
                              svgPath: ImageConstant.imgSignupTheme,
                              height: getVerticalSize(247),
                              width: getHorizontalSize(162),
                              margin: getMargin(left: 53, top: 27)),
                          Padding(
                              padding: getPadding(left: 2, top: 25),
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
                                                  .txtPoppinsSemiBold12Gray800),
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
                              padding: getPadding(left: 2, top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold12Gray800),
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
                              padding: getPadding(left: 2, top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Password",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold12Gray800),
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
                              text: "Create Account",
                              margin: getMargin(left: 37, top: 30, right: 36),
                              onTap: () {
                                registerUser(firstnameController.text, emailController.text, passwordController.text);
                              },
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      getPadding(top: 31, right: 75, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Already have account?",
                                            style: TextStyle(
                                                color: ColorConstant.indigo100,
                                                fontSize: getFontSize(10),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant
                                                    .deepPurpleA200,
                                                fontSize: getFontSize(10),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300)),
                                        TextSpan(
                                            text: "Sign In",
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.blueGray40001,
                                                fontSize: getFontSize(10),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }


}
