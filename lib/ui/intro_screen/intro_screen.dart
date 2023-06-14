import 'package:flutter/material.dart';
import 'package:water_supply/widgets/custom_button2.dart';
import 'package:mysql1/mysql1.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widget/custom_image_view.dart';


class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray4003d,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgBeforeloginicon,
                height: getVerticalSize(
                  293,
                ),
                width: getHorizontalSize(
                  247,
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 92,
                  ),
                  padding: getPadding(
                    left: 44,
                    top: 31,
                    right: 44,
                    bottom: 31,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enjoy Everyday!",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsSemiBold18.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: getHorizontalSize(
                            271,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 18,
                          ),
                          child: Text(
                            "Be wise, and discover your best water usage\nexperience with us. Everything is in\nyour hands!",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtPoppinsRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          51,
                        ),
                        width: getHorizontalSize(
                          149,
                        ),
                        text: "Login",
                        margin: getMargin(
                          top: 35,
                        ),
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.loginScreen,
                          );
                        }
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          51,
                        ),
                        width: getHorizontalSize(
                          174,
                        ),
                        text: "Register",
                        margin: getMargin(
                          top: 13,
                        ),
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            AppRoutes.registerScreen,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
