import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/widgets/custom_button.dart';
import 'package:groomely_seller/widgets/custom_radio_button.dart';
import 'package:groomely_seller/widgets/custom_text_form_field.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phonenumberController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_seller", "lbl_customer"];

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSideviewmang,
                          height: getVerticalSize(
                            342,
                          ),
                          width: getHorizontalSize(
                            414,
                          ),
                          radius: BorderRadius.only(
                            bottomLeft: Radius.circular(
                              getHorizontalSize(
                                200,
                              ),
                            ),
                            bottomRight: Radius.circular(
                              getHorizontalSize(
                                200,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          ),
                          child: Text(
                            "Signup to Explore More",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium24,
                          ),
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: nameController,
                          hintText: "Name",
                          margin: getMargin(
                            left: 60,
                            top: 50,
                            right: 61,
                          ),
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: emailController,
                          hintText: "Email ID",
                          margin: getMargin(
                            left: 60,
                            top: 20,
                            right: 61,
                          ),
                          textInputType: TextInputType.emailAddress,
                        ),
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          autofocus: true,
                          controller: phonenumberController,
                          hintText: "Phone Number",
                          margin: getMargin(
                            left: 60,
                            top: 20,
                            right: 61,
                          ),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                        ),
                        Container(
                          margin: getMargin(
                            left: 60,
                            top: 20,
                            right: 61,
                          ),
                          padding: getPadding(
                            left: 19,
                            top: 18,
                            right: 19,
                            bottom: 18,
                          ),
                          decoration: AppDecoration.outlineGray700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder27,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                ),
                                child: Text(
                                  "DOB",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getSize(
                                  17,
                                ),
                                width: getSize(
                                  17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "Are you",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 26,
                                ),
                                child: Row(
                                  children: [
                                    CustomRadioButton(
                                      text: "Seller",
                                      iconSize: getHorizontalSize(
                                        21,
                                      ),
                                      value: radioList[0],
                                      groupValue: radioGroup,
                                      fontStyle: RadioFontStyle.InterRegular14,
                                      onChange: (value) {
                                        radioGroup = value;
                                      },
                                    ),
                                    CustomRadioButton(
                                      text: "Customer",
                                      iconSize: getHorizontalSize(
                                        21,
                                      ),
                                      value: radioList[1],
                                      groupValue: radioGroup,
                                      margin: getMargin(
                                        left: 17,
                                      ),
                                      fontStyle: RadioFontStyle.InterRegular14,
                                      onChange: (value) {
                                        radioGroup = value;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            55,
                          ),
                          width: getHorizontalSize(
                            293,
                          ),
                          margin: getMargin(
                            top: 20,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 22,
                                  ),
                                  child: Text(
                                    "Password",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.gray700,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder27,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      55,
                                    ),
                                    width: getHorizontalSize(
                                      293,
                                    ),
                                    padding: getPadding(
                                      left: 20,
                                      top: 21,
                                      right: 20,
                                      bottom: 21,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder27,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgAlarm,
                                          height: getVerticalSize(
                                            12,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            55,
                          ),
                          width: getHorizontalSize(
                            293,
                          ),
                          margin: getMargin(
                            top: 20,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 22,
                                  ),
                                  child: Text(
                                    "Confirm Password",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular14,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.gray700,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder27,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      55,
                                    ),
                                    width: getHorizontalSize(
                                      293,
                                    ),
                                    padding: getPadding(
                                      left: 20,
                                      top: 21,
                                      right: 20,
                                      bottom: 21,
                                    ),
                                    decoration:
                                        AppDecoration.outlineGray700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder27,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgAlarm,
                                          height: getVerticalSize(
                                            12,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          alignment: Alignment.centerRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            55,
                          ),
                          text: "SIGNUP",
                          margin: getMargin(
                            left: 60,
                            top: 17,
                            right: 61,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Already Have an Account? ",
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "LOGIN",
                                  style: TextStyle(
                                    color: ColorConstant.orangeA200,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 20,
                            bottom: 17,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              94,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                4,
                              ),
                              thickness: getVerticalSize(
                                4,
                              ),
                              color: ColorConstant.gray9006c,
                            ),
                          ),
                        ),
                      ],
                    ),
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
