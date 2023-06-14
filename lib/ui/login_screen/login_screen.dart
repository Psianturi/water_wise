import 'package:flutter/material.dart';
import '../../widgets/custom_button2.dart';
import 'package:water_supply/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_style.dart';
import '../../widget/custom_image_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void loginUser(String email, String password) async {

    var url = 'http://192.168.1.16/water_wise/login_config.php';
    var response = await http.post( Uri.parse(url) ,
        body: {
          'email': email,
          'password': password,
        });

    if (response.statusCode == 200) {
      print('success');
      Navigator.pushNamed(context, AppRoutes.homeScreen);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login Successful'),
          backgroundColor: Colors.blueAccent,
        ),
      );
    } else {
      print('failed bye');
    }
  }

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
            padding: getPadding(
              left: 29,
              top: 31,
              right: 29,
              bottom: 31,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 1,
                    ),
                    child: Text(
                      "Welcome Back,",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsSemiBold18Gray800.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 1,
                    ),
                    child: Text(
                      "Login to continue your journey",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.6,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgLoginillustration,
                  height: getVerticalSize(
                    229,
                  ),
                  width: getHorizontalSize(
                    185,
                  ),
                  margin: getMargin(
                    top: 53,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 73,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12,
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: emailController,
                        hintText: "Enter your email",
                        margin: getMargin(
                          top: 4,
                        ),
                        textInputType: TextInputType.emailAddress,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 19,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold12,
                      ),
                      CustomTextFormField(
                        focusNode: FocusNode(),
                        autofocus: true,
                        controller: passwordController,
                        hintText: "Password here",
                        margin: getMargin(
                          top: 4,
                        ),
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        isObscureText: true,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "Forgot Password?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium12,
                    ),
                  ),
                ),
                CustomButton(
                  height: getVerticalSize(
                    51,
                  ),
                  text: "Login",
                  margin: getMargin(
                    left: 42,
                    top: 28,
                    right: 40,
                  ),
                  onTap: () {
                    if (_formKey.currentState!.validate())
                     {
                      loginUser(emailController.text, passwordController.text);
                    } else
                    {
                      print("Not Validated");
                    }
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 31,
                    bottom: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have account?",
                          style: TextStyle(
                            color: ColorConstant.indigo100,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: " Sign Up ",
                          style: TextStyle(
                            color: ColorConstant.blueGray400,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
