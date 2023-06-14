import 'package:flutter/material.dart';
import 'package:water_supply/core/app_export.dart';
import 'package:water_supply/ui/home/home__screen.dart';
import '../../app_bar/appbar_circleimage.dart';
import '../../app_bar/appbar_image.dart';
import '../../app_bar/appbar_subtitle.dart';
import '../../app_bar/appbar_title.dart';
import '../../app_bar/custom_app_bar.dart';
import '../../widget/custom_bottom_bar.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_form_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController dateController = TextEditingController();

  TextEditingController paymentmethodsController = TextEditingController();

  TextEditingController vouchersController = TextEditingController();

  TextEditingController contactusController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            83,
          ),
          title: Padding(
            padding: getPadding(
              left: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarTitle(
                  text: "Hi, Sephie",
                ),
                AppbarSubtitle(
                  text: "Welcome!",
                  margin: getMargin(
                    right: 34,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarCircleimage(
              imagePath: "assets/images/img_david1.png",
              margin: getMargin(
                left: 30,
                top: 3,
                right: 3,
              ),
            ),
            AppbarImage(
              height: getSize(
                10,
              ),
              width: getSize(
                10,
              ),
              svgPath: "assets/images/img_edit.svg",
              margin: getMargin(
                left: 10,
                top: 22,
                right: 33,
                bottom: 20,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 50,
            right: 20,
            bottom: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: dateController,
                hintText: "Update Account",
                margin: getMargin(
                  right: 20,
                ),
                variant: TextFormFieldVariant.OutlineBlack9003f,
                shape: TextFormFieldShape.RoundedBorder12,
                padding: TextFormFieldPadding.PaddingAll16,
                fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: paymentmethodsController,
                hintText: "Payment Methods",
                margin: getMargin(
                  top: 23,
                  right: 20,
                ),
                variant: TextFormFieldVariant.OutlineBlack9003f,
                shape: TextFormFieldShape.RoundedBorder12,
                padding: TextFormFieldPadding.PaddingAll16,
                fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: vouchersController,
                hintText: "Vouchers",
                margin: getMargin(
                  top: 23,
                  right: 20,
                ),
                variant: TextFormFieldVariant.OutlineBlack9003f,
                shape: TextFormFieldShape.RoundedBorder12,
                padding: TextFormFieldPadding.PaddingAll16,
                fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: contactusController,
                hintText: "Contact Us",
                margin: getMargin(
                  top: 23,
                  right: 20,
                ),
                variant: TextFormFieldVariant.OutlineBlack9003f,
                shape: TextFormFieldShape.RoundedBorder12,
                padding: TextFormFieldPadding.PaddingAll16,
                fontStyle: TextFormFieldFontStyle.PoppinsSemiBold12,
                textInputAction: TextInputAction.done,
              ),
              CustomButton(
                height: getVerticalSize(
                  43,
                ),
                width: getHorizontalSize(
                  72,
                ),
                text: "Logout",
                margin: getMargin(
                  left: 122,
                  top: 39,
                  bottom: 5,
                ),
                variant: ButtonVariant.OutlineBluegray700,
                fontStyle: ButtonFontStyle.PoppinsMedium15,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home1:
        return AppRoutes.homeScreen;
      case BottomBarEnum.History1:
        return "/";
      case BottomBarEnum.Notification1:
        return "/";
      case BottomBarEnum.Profile1:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreen:
      default:
        return DefaultWidget();
    }
  }
}
