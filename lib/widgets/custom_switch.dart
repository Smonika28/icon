import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:groomely_seller/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? true,
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
          onChanged!(value);
        },
      ),
    );
  }
}
