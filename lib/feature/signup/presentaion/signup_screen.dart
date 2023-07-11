
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../presentation/manage_services_container1_screen/manage_services_container1_screen.dart';
import '../../../theme/app_style.dart';
import '../../../utils/Toast/app_toast.dart';
import '../../../utils/color_constant.dart';
import '../../../utils/image_constant.dart';
import '../../../utils/size_utils.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../../signup/block/signup_bloc.dart';
// import '../../signup/bloc/seller_signup_bloc.dart';
import '../../login/presentation/login_screen.dart';
import '../../../utils/validate/validation.dart';
import '../../../utils/validate/validation_regx.dart';
import '../bloc/seller_signup_bloc.dart';
// import '../bloc/login_bloc.dart';

class SignUPScreen extends StatefulWidget {
  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {

  bool isTextObscure = true;
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController cnfPasswordController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController zipCodeController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String _errorMessage = '';
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      // resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSideviewmang,
                height: getVerticalSize(
                  280,
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
              SizedBox(height: 30),
              Text(
                "Signup to Explore More",
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtInterMedium24,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: firstNameController,
                hintText: "First Name",
                validator: (input) =>
                    customValidation.validateFirstName(input ?? ' '),
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: lastNameController,
                hintText: "Last Name",
                validator: (input) =>
                    customValidation.validateLastName(input ?? ' '),
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: emailController,
                hintText: "Please Enter Email id",
                validator: (input) => EmailValidator.validate(input!)
                    ? null
                    : "Please enter valid email id",
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: phoneController,
                hintText: "Phone number",
                validator: (input) =>
                    customValidation.validatePhoneNumber(input ?? ' '),
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),

                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: passwordController,
                // obscureText: isTextObscure,
                hintText: "Password",
                // suffixIcon: GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       isTextObscure = !isTextObscure;
                //     });
                //   },
                //   child: isTextObscure
                //       ? const Icon(
                //     Icons.visibility_off_rounded,
                //   )
                //       : const Icon(
                //     Icons.visibility_rounded,
                //   ),
                // ),
                validator: (input) =>
                    customValidation.validatePassword(input ?? ' '),
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                isObscureText: true,
                autofocus: true,
                controller: cnfPasswordController,
                hintText: "Confirm Password",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please re-enter password';
                  }
                  print(passwordController.text);
                  print(cnfPasswordController.text);
                  if (passwordController.text != cnfPasswordController.text) {
                    return "Password does not match";
                  }
                  return null;
                },
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: zipCodeController,
                hintText: "Zip Code",
                validator: (input) =>
                    customValidation.validateZip(input ?? ' '),
                margin: getMargin(
                  left: 60,
                  top: 23,
                  right: 61,
                ),
                variant: TextFormFieldVariant.OutlineOrangeA200,
                fontStyle: TextFormFieldFontStyle.InterRegular14,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
              ),
              BlocListener<SellerSignupBloc, SellerSignupState>(
                listener: (context, state) {
                  if (state is SellerSignupLoadedState) {
                    print("state --> ${state.responseModel.message.toString()}");
                    ToastMessage().toast(
                        context: context,
                        message: state.responseModel.message.toString(),
                        messageColor: Colors.white,
                        background: Colors.green);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ManageServicesContainer1Screen()),
                        (route) => false);
                  } else if (state is SellerSignupErrorState) {
                    ToastMessage().toast(
                        duration: 5000,
                        context: context,
                        message: state.errorMsg.toString(),
                        messageColor: Colors.white,
                        background: Colors.redAccent);
                  }
                },
                child: CustomButton(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      BlocProvider.of<SellerSignupBloc>(context).add(
                          SellerSignupEvents(
                              firstName: firstNameController.text.trim(),
                              lastName: lastNameController.text.trim(),
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              zipcode: zipCodeController.text.trim(),
                              cfpassword: cnfPasswordController.text.trim(),
                              phone: phoneController.text.trim()));
                    }
                  },
                  height: getVerticalSize(
                    55,
                  ),
                  text: "SIGN UP",
                  margin: getMargin(
                    left: 60,
                    top: 40,
                    right: 61,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 98,
                    top: 9,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Have an  account?  ",
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
                          text: "LOGIN NOW",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (route) => false);
                            },
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
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}



//
//
// TextFormField(
// keyboardType: TextInputType.text,
// controller: _userPasswordController,
// obscureText: !_passwordVisible,//This will obscure text dynamically
// decoration: InputDecoration(
// labelText: 'Password',
// hintText: 'Enter your password',
// // Here is key idea
// suffixIcon: IconButton(
// icon: Icon(
// // Based on passwordVisible state choose the icon
// _passwordVisible
// ? Icons.visibility
//     : Icons.visibility_off,
// color: Theme.of(context).primaryColorDark,
// ),
// onPressed: () {
// // Update the state i.e. toogle the state of passwordVisible variable
// setState(() {
// _passwordVisible = !_passwordVisible;
// });
// },
// ),
// ),
// );
//

