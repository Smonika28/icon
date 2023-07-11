import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/feature/service/manage_service/model/service_model.dart';
import 'package:groomely_seller/feature/service/service_details_screen/service_details_screen.dart';
import 'package:groomely_seller/utils/APi/api_calling.dart';
import 'package:groomely_seller/widgets/custom_switch.dart';

// ignore: must_be_immutable
class ListservicenameItemWidget extends StatefulWidget {
  Data serviceData;
  ListservicenameItemWidget({required this.serviceData});

  @override
  State<ListservicenameItemWidget> createState() => _ListservicenameItemWidgetState();
}

class _ListservicenameItemWidgetState extends State<ListservicenameItemWidget> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ServiceDetailsScreen(
                      serviceData: widget.serviceData,
                    )));
      },
      child: Container(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.fillGray200.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(
                    left: 10,
                    top: 9,
                    right: 10,
                    bottom: 9,
                  ),
                  decoration: AppDecoration.fillOrangeA200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                          right: 2,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "Service name".toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold12,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar,
                              height: getVerticalSize(
                                12,
                              ),
                              width: getHorizontalSize(
                                13,
                              ),
                              margin: getMargin(
                                top: 3,
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 6,
                                top: 1,
                              ),
                              child: Text(
                                "4.84 (209.2K) ",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 2,
                        ),
                        child: Text(
                          "${widget.serviceData.service?.additionalService?.name}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterLight16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 15,
                  right: 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 3,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Category".toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Text(
                              "${widget.serviceData.service?.category?.name}",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "service type".toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 3,
                            ),
                            child: Text(
                              "${widget.serviceData.service?.serviceType?.name}",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterLight16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "duration".toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Text(
                            "${widget.serviceData.service?.duration}",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterLight16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                    top: 8,
                    right: 11,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "offer".toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold12,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterLight16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 48,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                          bottom: 16,
                        ),
                        child: Text(
                          "Rate".toUpperCase(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                          bottom: 8,
                        ),
                        child: Text(
                          "115",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold24,
                        ),
                      ),
                      Spacer(
                        flex: 51,
                      ),
                      FlutterSwitch(
                        value: widget.serviceData.status==1?true:false,
                        height: getHorizontalSize(24),
                        width: getHorizontalSize(63),
                        toggleSize: 19,
                        borderRadius: getHorizontalSize(
                          12.00,
                        ),
                        activeColor: ColorConstant.greenA700,
                        activeToggleColor: ColorConstant.whiteA700,
                        inactiveColor: ColorConstant.gray500,
                        inactiveToggleColor: ColorConstant.whiteA700,
                        onToggle: (value) {
                          print("${widget.serviceData.service!.id.toString()}");
                        ApiCallingClass().toggleService(serviceID:widget.serviceData.service!.id.toString(),status:value?1:0).then((v) =>{
                          setState(() {
                            widget.serviceData.status = value?1:0;
                           // isSelectedSwitch = value;
                        })
                        });
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
