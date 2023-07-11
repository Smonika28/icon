import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/widgets/custom_button.dart';

class EditDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Edit Details",style: TextStyle(fontSize:20,color: Colors.black)),
          actions: [
            IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color: Colors.black,))
          ],
        ),
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
                padding: getPadding(top:10),
                child: Container(
                    decoration: AppDecoration.fillGray200,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 29,
                                      top: 17,
                                      right: 29,
                                      bottom: 17),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 23),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Service",
                                                      style: TextStyle(
                                                          color:
                                                              ColorConstant
                                                                  .gray700,
                                                          fontSize:
                                                              getFontSize(
                                                                  14),
                                                          fontFamily:
                                                              'Inter',
                                                          fontWeight:
                                                              FontWeight
                                                                  .w400)),
                                                  TextSpan(
                                                      text: "*",
                                                      style: TextStyle(
                                                          color:
                                                              ColorConstant
                                                                  .red500,
                                                          fontSize:
                                                              getFontSize(
                                                                  14),
                                                          fontFamily:
                                                              'Inter',
                                                          fontWeight:
                                                              FontWeight
                                                                  .w400))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Container(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(356),
                                            margin: getMargin(top: 6),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            27)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .orangeA200,
                                                    width:
                                                        getHorizontalSize(
                                                            1)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 9),
                                            child: Text("Category Name",
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(356),
                                                margin: getMargin(top: 6),
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 24,
                                                    right: 23,
                                                    bottom: 24),
                                                decoration: AppDecoration
                                                    .outlineGray700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder27),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVectorGray700,
                                                          height:
                                                              getVerticalSize(
                                                                  5),
                                                          width:
                                                              getHorizontalSize(
                                                                  8),
                                                          margin: getMargin(
                                                              top: 1))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 9),
                                            child: Text("Service Type",
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Container(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(356),
                                            margin: getMargin(top: 5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            27)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .gray700,
                                                    width:
                                                        getHorizontalSize(
                                                            1)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 8),
                                            child: Text("Duration",
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Container(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(356),
                                            margin: getMargin(top: 6),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            27)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .gray700,
                                                    width:
                                                        getHorizontalSize(
                                                            1)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 9),
                                            child: Text("Description",
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Container(
                                            height: getVerticalSize(147),
                                            width: getHorizontalSize(356),
                                            margin: getMargin(top: 5),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            6)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .gray700,
                                                    width:
                                                        getHorizontalSize(
                                                            1)))),
                                        Padding(
                                            padding: getPadding(
                                                top: 8, right: 32),
                                            child: Row(children: [
                                              Expanded(
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23),
                                                        child: Text(
                                                            "Offer (%)",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: AppStyle
                                                                .txtInterRegular14)),
                                                    Container(
                                                        height:
                                                            getVerticalSize(
                                                                55),
                                                        width:
                                                            getHorizontalSize(
                                                                287),
                                                        margin: getMargin(
                                                            top: 6),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        27)),
                                                            border: Border.all(
                                                                color: ColorConstant
                                                                    .gray700,
                                                                width:
                                                                    getHorizontalSize(
                                                                        1))))
                                                  ])),
                                              Card(
                                                  clipBehavior:
                                                      Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      left: 22,
                                                      top: 43,
                                                      bottom: 20),
                                                  color: ColorConstant
                                                      .whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color:
                                                              ColorConstant
                                                                  .gray50001,
                                                          width:
                                                              getHorizontalSize(
                                                                  1)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder3),
                                                  child: Container(
                                                      height: getSize(15),
                                                      width: getSize(15),
                                                      padding: getPadding(
                                                          left: 2,
                                                          top: 4,
                                                          right: 2,
                                                          bottom: 4),
                                                      decoration: AppDecoration
                                                          .outlineGray50001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder3),
                                                      child:
                                                          Stack(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCheckmarkLime700,
                                                            height:
                                                                getVerticalSize(
                                                                    7),
                                                            width:
                                                                getHorizontalSize(
                                                                    10),
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])))
                                            ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 23, top: 10),
                                            child: Text("Duration",
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular14)),
                                        Container(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(356),
                                            margin: getMargin(top: 6),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            27)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .gray700,
                                                    width:
                                                        getHorizontalSize(
                                                            1)))),
                                        CustomButton(
                                            height: getVerticalSize(55),
                                            text: "UPDATE",
                                            margin: getMargin(
                                                left: 31,
                                                top: 30,
                                                right: 32),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 25, bottom: 13),
                                                child: SizedBox(
                                                    width:
                                                        getHorizontalSize(
                                                            94),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(
                                                                4),
                                                        thickness:
                                                            getVerticalSize(
                                                                4),
                                                        color: ColorConstant
                                                            .gray9006c))))
                                      ])))
                        ])))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
