
part of 'seller_signup_bloc.dart';

@immutable
abstract class SellerSignupEvent {}

// ignore: must_be_immutable
class SellerSignupEvents extends SellerSignupEvent{
  String firstName;
  String lastName;
  String password;
  String cfpassword;
  String email;
  String phone;
  String zipcode;

  SellerSignupEvents({required this.firstName, required this.lastName, required this.password,
  required this.cfpassword, required this.email, required this.phone, required this.zipcode });
}