// import 'package:flutter/material.dart';
// import 'package:groomely_seller/core/app_export.dart';
//
// class CustomTextFormField extends StatelessWidget {
//   var onChanged;
//
//   var suffixIcon;
//
//   CustomTextFormField({
//     this.shape,
//     this.padding,
//     this.variant,
//     this.fontStyle,
//     this.alignment,
//     this.width,
//     this.margin,
//     this.controller,
//     this.focusNode,
//     this.autofocus = false,
//     this.isObscureText = false,
//     this.textInputAction = TextInputAction.next,
//     this.textInputType = TextInputType.text,
//     this.maxLines,
//     this.hintText,
//     this.prefix,
//     this.prefixConstraints,
//     this.suffix,
//     this.suffixConstraints,
//     this.validator,
//   });
//
//   TextFormFieldShape? shape;
//
//   TextFormFieldPadding? padding;
//
//   TextFormFieldVariant? variant;
//
//   TextFormFieldFontStyle? fontStyle;
//
//   Alignment? alignment;
//
//   double? width;
//
//   EdgeInsetsGeometry? margin;
//
//   TextEditingController? controller;
//
//   FocusNode? focusNode;
//
//   bool? autofocus;
//
//   bool? isObscureText;
//
//   TextInputAction? textInputAction;
//
//   TextInputType? textInputType;
//
//   int? maxLines;
//
//   String? hintText;
//
//   Widget? prefix;
//
//   BoxConstraints? prefixConstraints;
//
//   Widget? suffix;
//
//   BoxConstraints? suffixConstraints;
//
//   FormFieldValidator<String>? validator;
//
//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//             alignment: alignment ?? Alignment.center,
//             child: _buildTextFormFieldWidget(),
//           )
//         : _buildTextFormFieldWidget();
//   }
//
//   _buildTextFormFieldWidget() {
//     return Container(
//       width: width ?? double.maxFinite,
//       margin: margin,
//       child: TextFormField(
//         controller: controller,
//         focusNode: focusNode,
//         autofocus: autofocus!,
//         style: _setFontStyle(),
//         obscureText: isObscureText!,
//         textInputAction: textInputAction,
//         keyboardType: textInputType,
//         maxLines: maxLines ?? 1,
//         decoration: _buildDecoration(),
//         validator: validator,
//       ),
//     );
//   }
//
//   _buildDecoration() {
//     return InputDecoration(
//       hintText: hintText ?? "",
//       hintStyle: _setFontStyle(),
//       border: _setBorderStyle(),
//       enabledBorder: _setBorderStyle(),
//       focusedBorder: _setBorderStyle(),
//       disabledBorder: _setBorderStyle(),
//       prefixIcon: prefix,
//       prefixIconConstraints: prefixConstraints,
//       suffixIcon: suffix,
//       suffixIconConstraints: suffixConstraints,
//       fillColor: _setFillColor(),
//       filled: _setFilled(),
//       isDense: true,
//       contentPadding: _setPadding(),
//     );
//   }
//
//   _setFontStyle() {
//     switch (fontStyle) {
//       case TextFormFieldFontStyle.InterRegular14:
//         return TextStyle(
//           color: ColorConstant.gray900,
//           fontSize: getFontSize(
//             14,
//           ),
//           fontFamily: 'Inter',
//           fontWeight: FontWeight.w400,
//         );
//       case TextFormFieldFontStyle.InterRegular14WhiteA700:
//         return TextStyle(
//           color: ColorConstant.whiteA700,
//           fontSize: getFontSize(
//             14,
//           ),
//           fontFamily: 'Inter',
//           fontWeight: FontWeight.w400,
//         );
//       default:
//         return TextStyle(
//           color: ColorConstant.gray700,
//           fontSize: getFontSize(
//             14,
//           ),
//           fontFamily: 'Inter',
//           fontWeight: FontWeight.w400,
//         );
//     }
//   }
//
//   _setOutlineBorderRadius() {
//     switch (shape) {
//       case TextFormFieldShape.CustomBorderTL28:
//         return BorderRadius.only(
//           topLeft: Radius.circular(
//             getHorizontalSize(
//               28.00,
//             ),
//           ),
//           topRight: Radius.circular(
//             getHorizontalSize(
//               0.00,
//             ),
//           ),
//           bottomLeft: Radius.circular(
//             getHorizontalSize(
//               28.00,
//             ),
//           ),
//           bottomRight: Radius.circular(
//             getHorizontalSize(
//               0.00,
//             ),
//           ),
//         );
//       default:
//         return BorderRadius.circular(
//           getHorizontalSize(
//             27.00,
//           ),
//         );
//     }
//   }
//
//   _setBorderStyle() {
//     switch (variant) {
//       case TextFormFieldVariant.OutlineOrangeA200:
//         return OutlineInputBorder(
//           borderRadius: _setOutlineBorderRadius(),
//           borderSide: BorderSide(
//             color: ColorConstant.orangeA200,
//             width: 1,
//           ),
//         );
//       case TextFormFieldVariant.FillAmberA400:
//         return OutlineInputBorder(
//           borderRadius: _setOutlineBorderRadius(),
//           borderSide: BorderSide.none,
//         );
//       case TextFormFieldVariant.None:
//         return InputBorder.none;
//       default:
//         return OutlineInputBorder(
//           borderRadius: _setOutlineBorderRadius(),
//           borderSide: BorderSide(
//             color: ColorConstant.gray700,
//             width: 1,
//           ),
//         );
//     }
//   }
//
//   _setFillColor() {
//     switch (variant) {
//       case TextFormFieldVariant.FillAmberA400:
//         return ColorConstant.amberA400;
//       default:
//         return null;
//     }
//   }
//
//   _setFilled() {
//     switch (variant) {
//       case TextFormFieldVariant.OutlineGray700:
//         return false;
//       case TextFormFieldVariant.OutlineOrangeA200:
//         return false;
//       case TextFormFieldVariant.FillAmberA400:
//         return true;
//       case TextFormFieldVariant.None:
//         return false;
//       default:
//         return false;
//     }
//   }
//
//   _setPadding() {
//     switch (padding) {
//       case TextFormFieldPadding.PaddingT3:
//         return getPadding(
//           top: 3,
//           right: 3,
//           bottom: 3,
//         );
//       default:
//         return getPadding(
//           all: 19,
//         );
//     }
//   }
// }
//
// enum TextFormFieldShape {
//   RoundedBorder27,
//   CustomBorderTL28,
// }
//
// enum TextFormFieldPadding {
//   PaddingAll19,
//   PaddingT3,
// }
//
// enum TextFormFieldVariant {
//   None,
//   OutlineGray700,
//   OutlineOrangeA200,
//   FillAmberA400,
// }
//
// enum TextFormFieldFontStyle {
//   InterRegular14Gray700,
//   InterRegular14,
//   InterRegular14WhiteA700,
// }




import 'package:flutter/material.dart';
import 'package:groomely_seller/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  var onChanged;

  CustomTextFormField({
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.isObscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.validator,
   

  });

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  // Icon? suffixIcon;
 
  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? autofocus;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: _buildTextFormFieldWidget(),
    )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus!,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.InterRegular14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.InterRegular14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CustomBorderTL28:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              28.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              28.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineOrangeA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.orangeA200,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillAmberA400:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray700,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillAmberA400:
        return ColorConstant.amberA400;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray700:
        return false;
      case TextFormFieldVariant.OutlineOrangeA200:
        return false;
      case TextFormFieldVariant.FillAmberA400:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT3:
        return getPadding(
          top: 3,
          right: 3,
          bottom: 3,
        );
      default:
        return getPadding(
          all: 19,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder27,
  CustomBorderTL28,
}

enum TextFormFieldPadding {
  PaddingAll19,
  PaddingT3,
}

enum TextFormFieldVariant {
  None,
  OutlineGray700,
  OutlineOrangeA200,
  FillAmberA400,
}

enum TextFormFieldFontStyle {
  InterRegular14Gray700,
  InterRegular14,
  InterRegular14WhiteA700,
}