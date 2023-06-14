import '../home/home__screen.dart';
import '../notification_screen/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'package:water_supply/ui/home/widgets/home_item_widget.dart';
import '../../widget/custom_bottom_bar.dart';
import '../../widget/custom_text_form_field.dart';



class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  TextEditingController groupseventeenController = TextEditingController();

  TextEditingController groupfifteenController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 23,
            top: 29,
            right: 23,
            bottom: 29,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 7,
                ),
                child: Text(
                  "Notifications",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsSemiBold18Gray800.copyWith(
                    letterSpacing: getHorizontalSize(
                      1.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 38,
                  right: 14,
                ),
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                  bottom: 15,
                ),
                decoration: AppDecoration.outlineBlack90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: groupseventeenController,
                      hintText: "Bill Due",
                      variant: TextFormFieldVariant.UnderLineGray300,
                      fontStyle: TextFormFieldFontStyle.PoppinsRegular12Gray800,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 10,
                        bottom: 1,
                      ),
                      child: Text(
                        "Bill Due on 29/05/2023",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Gray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 33,
                  right: 14,
                ),
                padding: getPadding(
                  left: 16,
                  top: 14,
                  right: 16,
                  bottom: 14,
                ),
                decoration: AppDecoration.outlineBlack90019.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextFormField(
                      focusNode: FocusNode(),
                      autofocus: true,
                      controller: groupfifteenController,
                      hintText: "High Usage",
                      margin: getMargin(
                        top: 2,
                      ),
                      variant: TextFormFieldVariant.UnderLineGray300,
                      fontStyle: TextFormFieldFontStyle.PoppinsRegular12Gray800,
                      textInputAction: TextInputAction.done,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 12,
                      ),
                      child: Text(
                        "High usage on kicthen",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Gray400.copyWith(
                          letterSpacing: getHorizontalSize(
                            1.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    top: 33,
                    right: 14,
                  ),
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: getVerticalSize(
                          26,
                        ),
                      );
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return NotificationItemWidget();
                    },
                  ),
                ),
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
        return "/";
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
