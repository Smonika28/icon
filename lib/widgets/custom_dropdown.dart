import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groomely_seller/feature/service/add_service_screen/bloc/fetch_all_service_bloc.dart';
import 'package:groomely_seller/feature/service/add_service_screen/model/all_service_model.dart';
class CustomDropDown extends StatefulWidget {
  CustomDropDown({required this.onChanged, required this.items});
  void Function(String?)? onChanged;
  AllServiceModel items;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}
class _CustomDropDownState extends State<CustomDropDown> {
  String? dropdownValue;
  List<String> serviceVals = [];
  List<String> serviceIds = [];
  @override
  void initState() {
    super.initState();
    setDropDownValues();
  }

  void setDropDownValues() async {
    for (int i = 0; i < widget.items.data!.length; i++) {
      setState(() {
        serviceVals
            .add(widget.items.data![i].additionalService!.name.toString());
        serviceIds
            .add((widget.items.data![i].additionalService!.id.toString()));
      });
    }
    if (widget.items.data!.isNotEmpty) {
      print("service id ---$serviceIds");
      // BlocProvider.of<FetchAllFieldBloc>(context)
      //     .add(ServiceDetailsFieldEvent(serviceID:serviceIds[0]));
      setState(() {
        dropdownValue = serviceVals[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: const SizedBox(),
      value: dropdownValue,
      isDense: true,
      isExpanded: true,
      borderRadius: BorderRadius.circular(10),
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      elevation: 16,
      hint: const Text(
        "Please select a branch",
        style: TextStyle(color: Colors.white),
      ),
      style: const TextStyle(color: Colors.deepPurple),
      onChanged: (String? newValue) async {
        setState(() {
          dropdownValue = newValue!;
        });
        var serviceId;
        for (var element in serviceVals) {
          var indexOfelement = serviceVals.indexOf(newValue!);
          serviceId = serviceIds[indexOfelement];
        }
        print("service id=====> $serviceId");
        BlocProvider.of<FetchAllFieldBloc>(context)
            .add(ServiceDetailsFieldEvent(serviceID: serviceId.toString()));
      },
      items: serviceVals.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value.trim(),
          child: Text(
            value.trim(),
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
