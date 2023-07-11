import 'package:groomely_seller/core/api/api_string.dart';
import 'package:groomely_seller/utils/APi/api_provider.dart';
import '../model/seller_signup_res_model.dart';

class SignupRepository{
  final apiProvider = ApiProvider();
  SellerSignupModel sellerSignupModel = SellerSignupModel();
  Future<dynamic> getSignup(Map<String,dynamic> reqModel){
    return apiProvider.dataProcessor(reqModel, sellerSignupModel,Apis.signup);
  }
}

class NetworkError extends Error {}
