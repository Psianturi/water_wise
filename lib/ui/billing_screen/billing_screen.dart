import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'package:water_supply/ui/home/widgets/home_item_widget.dart';
import '../../widget/custom_bottom_bar.dart';
import '../../widget/custom_text_form_field.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class BillingScreen extends StatefulWidget {
  const BillingScreen({Key? key}) : super(key: key);

  @override
  State<BillingScreen> createState() => _BillingScreenState();
}
// ignore_for_file: must_be_immutable
class _BillingScreenState extends State<BillingScreen> {

  Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('http://192.168.1.16/water_wise/billing_config.php'));

    if (response.statusCode == 200) {
      // Decode the JSON response
      final List<dynamic> allBill = json.decode(response.body);

      return allBill;
    } else {
      throw Exception('Failed to fetch data');
    }
  }
  TextEditingController groupthirtyseveController = TextEditingController();

  TextEditingController groupthirtynineController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: getPadding(left: 147, top: 51),
                          child: Text("Balance",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular14Gray400
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(1.0)))),
                      Padding(
                          padding: getPadding(left: 150, top: 4),
                          child: Text("200 SGD",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold30Gray800
                                  .copyWith(
                                  letterSpacing: getHorizontalSize(0.3)))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 56),
                              padding: getPadding(
                                  left: 30, top: 16, right: 30, bottom: 16),
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Your Billing",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold18Gray800
                                            .copyWith(
                                            letterSpacing:
                                            getHorizontalSize(1.0))),
                                    Container(
                                        width: double.maxFinite,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapListdue(context);
                                            },
                                            child: Container(
                                                margin: getMargin(top: 10),
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 15,
                                                    right: 16,
                                                    bottom: 15),
                                                decoration: AppDecoration.white
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "June",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Gray800
                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))),

                                                      Padding(
                                                          padding: getPadding(
                                                              top: 10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                          "June Bill",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12RedA400
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                              4),
                                                                          child: Text(
                                                                              "10/07/2023",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12RedA400.copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                    ]),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 11,
                                                                        bottom:
                                                                        11),
                                                                    child: Text(
                                                                        "200",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular12RedA400
                                                                            .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                              ]))
                                                    ])))),
                                    Container(
                                        width: double.maxFinite,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapListnotdue(context);
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    top: 12, bottom: 323),
                                                padding: getPadding(all: 16),
                                                decoration: AppDecoration.white
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "May",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign: TextAlign
                                                              .left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Gray800
                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))),

                                                      Padding(
                                                          padding: getPadding(
                                                              top: 11),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Text(
                                                                          "May Bill",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular12Gray800
                                                                              .copyWith(letterSpacing: getHorizontalSize(1.0))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                              2),
                                                                          child: Text(
                                                                              "Paid",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsRegular12Gray400.copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                                    ]),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                        10),
                                                                    child: Text(
                                                                        "250 SGD",
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular12Bluegray700
                                                                            .copyWith(letterSpacing: getHorizontalSize(1.0))))
                                                              ]))
                                                    ]))))
                                  ])))
                    ])),
            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home1:
        return AppRoutes.homeScreen;
      case BottomBarEnum.History1:
        return AppRoutes.billingScreen;
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

  onTapListdue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewBillScreen);
  }

  onTapListnotdue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewBillScreen);
  }
}
