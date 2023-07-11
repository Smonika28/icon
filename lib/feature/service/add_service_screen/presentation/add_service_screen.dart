import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../utils/color_constant.dart';
import '../../../../utils/size_utils.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_dropdown.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../bloc/fetch_all_service_bloc.dart';

class AddServiceScreen extends StatefulWidget {
  @override
  State<AddServiceScreen> createState() => _AddServiceScreenState();
}

class _AddServiceScreenState extends State<AddServiceScreen> {
  bool _isChecked = false;
  TextEditingController serviceController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController serviceTypeController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController offerController = TextEditingController();
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchAllServiceBloc>(context).add(FetchAllServiceEvents());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.black)),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Add Service",
              style: TextStyle(fontSize: 20, color: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(top: 7),
            child: Container(
              decoration: AppDecoration.fillGray200,
              child: Container(
                width: double.maxFinite,
                child: Container(
                  padding: getPadding(left: 29, top: 17, right: 29, bottom: 17),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 23),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Service",
                                      style: TextStyle(
                                          color: ColorConstant.gray700,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "*",
                                      style: TextStyle(
                                          color: ColorConstant.red500,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.left)),
                        BlocBuilder<FetchAllServiceBloc, FetchAllServiceState>(
                          builder: (context, state) {
                            if (kDebugMode) {
                              print(state.toString());
                            }
                            if (state is FetchAllServiceLoadedState) {
                              return Container(
                                height: getVerticalSize(55),
                                width: getHorizontalSize(356),
                                margin: getMargin(top: 6),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(27)),
                                    border: Border.all(
                                        color: ColorConstant.orangeA200,
                                        width: getHorizontalSize(1))),
                                child: CustomDropDown(
                                    onChanged: (v) {},
                                    items: state.allServiceModel),
                              );
                            }
                            return Shimmer.fromColors(
                              baseColor: Colors.transparent,
                              highlightColor: Colors.white.withOpacity(0.5),
                              child: Container(
                                color: const Color(0xFF244661),
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                              ),
                            );
                          },
                        ),
                        BlocBuilder<FetchAllFieldBloc, FetchAllFieldState>(
                          builder: (context, state) {
                            print("fiedstate $state");
                            if (state is FetchAllServiceFieldLoading) {
                              return Shimmer.fromColors(
                                baseColor: Colors.transparent,
                                highlightColor: Colors.white.withOpacity(0.5),
                                child: Container(
                                  color: const Color(0xFF244661),
                                  width: MediaQuery.of(context).size.width,
                                ),
                              );
                            }
                            if (state
                                is FetchAllServiceDetailsFieldSetDoneState) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(
                                          left: 30, top: 9, bottom: 5),
                                      child: Text("Category Name",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14)),
                                  CustomTextFormField(
                                    hintText:
                                        "${state.detailServiceModel.data!.category!.name!}",
                                  ),
                                  // Container(
                                  //     alignment: Alignment.centerLeft,
                                  //     child: Text(state.detailServiceModel.data!.category!.name!),
                                  //     height: getVerticalSize(55),
                                  //     width: getHorizontalSize(356),
                                  //     margin: getMargin(top: 6),
                                  //     decoration: BoxDecoration(
                                  //         borderRadius:
                                  //             BorderRadius.circular(
                                  //                 getHorizontalSize(27)),
                                  //         border: Border.all(
                                  //             color: ColorConstant.gray700,
                                  //             width:
                                  //                 getHorizontalSize(1)))),
                                  Padding(
                                      padding: getPadding(
                                          left: 23, top: 9, bottom: 5),
                                      child: Text("Service Type",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14)),
                                  CustomTextFormField(
                                    hintText:
                                        "${state.detailServiceModel.data!.serviceType!.name!}",
                                  ),
                                  // Container(
                                  //     height: getVerticalSize(55),
                                  //     width: getHorizontalSize(356),
                                  //     margin: getMargin(top: 5),
                                  //     child: Text(state.detailServiceModel.data!.serviceType!.name!),
                                  //     decoration: BoxDecoration(
                                  //
                                  //         borderRadius:
                                  //             BorderRadius.circular(
                                  //                 getHorizontalSize(27)),
                                  //         border: Border.all(
                                  //             color: ColorConstant.gray700,
                                  //             width:
                                  //                 getHorizontalSize(1)))),

                                  Padding(
                                      padding: getPadding(
                                          left: 23, top: 8, bottom: 5),
                                      child: Text("Duration",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14)),
                                  CustomTextFormField(
                                    hintText:
                                        "${state.detailServiceModel.data!.duration!}",
                                  ),
                                  // Container(
                                  //     height: getVerticalSize(55),
                                  //     width: getHorizontalSize(356),
                                  //     margin: getMargin(top: 6),
                                  //     child: Text(state.detailServiceModel.data!.duration!),
                                  //     decoration: BoxDecoration(
                                  //         borderRadius:
                                  //             BorderRadius.circular(
                                  //                 getHorizontalSize(27)),
                                  //         border: Border.all(
                                  //             color: ColorConstant.gray700,
                                  //             width:
                                  //                 getHorizontalSize(1)))),
                                  Padding(
                                      padding: getPadding(
                                          left: 23, top: 9, bottom: 5),
                                      child: Text("Description",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular14)),
                                  CustomTextFormField(
                                    hintText:
                                        "${state.detailServiceModel.data!.description!}",
                                  ),
                                  // Container(
                                  //     height: getVerticalSize(147),
                                  //     width: getHorizontalSize(356),
                                  //     margin: getMargin(top: 5),
                                  //
                                  //       child: Text("${state.detailServiceModel.data!.description!}",
                                  //
                                  //       ),
                                  //     // child: Text(state.detailServiceModel.data!.description!),
                                  //
                                  //     decoration: BoxDecoration(
                                  //         borderRadius:
                                  //             BorderRadius.circular(
                                  //                 getHorizontalSize(6)),
                                  //         border: Border.all(
                                  //             color: ColorConstant.gray700,
                                  //             width:
                                  //                 getHorizontalSize(1)))),
                                  Padding(
                                    padding: getPadding(top: 8, right: 32),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 23, bottom: 5),
                                                  child: Text("Offer (%)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular14)),
                                              CustomTextFormField(
                                                hintText:
                                                    "${state.detailServiceModel.data!.offer!.offerAmount}",
                                              )
                                            ])),

                                        // Checkbox(
                                        //     value: true, onChanged: (v) {},)
                                        Checkbox(
                                          value: _isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              _isChecked = value!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                      height: getVerticalSize(55),
                                      text: "ADD SERVICE",
                                      margin: getMargin(
                                          left: 31, top: 30, right: 32),
                                      alignment: Alignment.center),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(top: 25, bottom: 31),
                                      child: SizedBox(
                                        width: getHorizontalSize(94),
                                        child: Divider(
                                            height: getVerticalSize(4),
                                            thickness: getVerticalSize(4),
                                            color: ColorConstant.gray9006c),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }
                            return Container();
                          },
                        )
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
