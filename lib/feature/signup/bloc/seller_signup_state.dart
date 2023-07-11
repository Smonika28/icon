part of 'seller_signup_bloc.dart';

abstract class SellerSignupState {}

class SellerSignupInitial extends SellerSignupState {}

class SellerSignupLodingState extends SellerSignupState{}

class SellerSignupLoadedState extends SellerSignupState{
  SellerSignupModel responseModel;
  SellerSignupLoadedState({required this.responseModel});
}

class SellerSignupErrorState extends SellerSignupState{
  String errorMsg;
  SellerSignupErrorState({required this.errorMsg});
}
