import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groomely_seller/feature/service/manage_service/bloc/manage_service_bloc.dart';
import 'package:groomely_seller/feature/service/add_service_screen/presentation/add_service_screen.dart';
import '../../../../widgets/listservicename_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';
import 'package:groomely_seller/widgets/custom_floating_button.dart';
import '../../../notification/presentation/notification.dart';

// ignore_for_file: must_be_immutable
class ManageServicesContainerPage extends StatefulWidget {
  @override
  State<ManageServicesContainerPage> createState() =>
      _ManageServicesContainerPageState();
}

class _ManageServicesContainerPageState
    extends State<ManageServicesContainerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ManageServiceBloc>(context).add(FetchServiceListEvent(statusId: null));
  }

  bool _checkbox = false;
  bool _checkboxListTile = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Manage Services",
              style: TextStyle(fontSize: 20, color: Colors.black)),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificatonScreen()));
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: getPadding(left: 13, right: 18, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Service List",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold20,
                  ),
                  PopupMenuButton(
                    child: CustomImageView(
                      svgPath: ImageConstant.imgFilter,
                      height: getVerticalSize(
                        18,
                      ),
                      width: getHorizontalSize(
                        16,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 2,
                      ),
                    ),
                    itemBuilder: (context) {
                      return List.generate(1, (index) {
                        return PopupMenuItem(
                            child: Container(
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Filter"),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close))
                                ],
                              ),
                              Divider(),
                              Text("Status"),
                              Row(
                                children: [
                                  Checkbox.adaptive(
                                    value: _checkbox,
                                    onChanged: (value) {
                                      print("jhdfhghfug");
                                      BlocProvider.of<ManageServiceBloc>(context).add(FetchServiceListEvent(statusId: 1));
                                      setState(() {
                                         _checkbox = !_checkbox;

                                      });
                                    },
                                  ),
                                  Text("Active"),
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox.adaptive(
                                    value: _checkboxListTile,
                                    onChanged: (value) {
                                      print("hheeeeellllllloooooo");
                                      BlocProvider.of<ManageServiceBloc>(context).add(FetchServiceListEvent(statusId: 0));
                                      setState(() {
                                        _checkboxListTile = !_checkboxListTile;
                                      });
                                    },
                                  ),
                                  Text("Inactive"),
                                ],
                              )
                            ],
                          ),
                        ));
                      });
                    },
                  ),
                ],
              ),
            ),
            BlocBuilder<ManageServiceBloc, ManageServiceState>(
              builder: (context, state) {
                if (state is ManageServiceDataErrorState) {
                  return Center(child: Text("Something went Wrong"));
                } else if (state is ManageServiceDataLoadingState) {
                  return Center(child: CircularProgressIndicator.adaptive());
                } else if (state is ManageServiceDataLoadedState) {
                  return Expanded(
                    child: Padding(
                      padding: getPadding(
                        left: 15,
                        top: 24,
                        right: 15,
                      ),
                      child: ListView.separated(
                        // physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: getVerticalSize(
                              13,
                            ),
                          );
                        },
                        itemCount: state.serviceModel.data!.length,
                        itemBuilder: (context, index) {
                          print("pandey jii---> ");
                          return ListservicenameItemWidget(
                            serviceData: state.serviceModel.data![index],
                          );
                        },
                      ),
                    ),
                  );
                }
                return Container();
              },
            ),
          ],
        ),
        floatingActionButton: CustomFloatingButton(
          backgroundColor: ColorConstant.gray200,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddServiceScreen()));
          },
          height: 71,
          width: 71,
          child: CustomImageView(
            svgPath: ImageConstant.imgPlus,
            height: getVerticalSize(
              35.5,
            ),
            width: getHorizontalSize(
              35.5,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return new AlertDialog(
      title: const Text('Popup example'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello"),
        ],
      ),
      actions: <Widget>[CustomFloatingButton()],
    );
  }
}
