
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:groomely_seller/utils/APi/api_helper.dart';


class ApiProvider with ApiHelper{
  // Future<LoginResponseModel?> loginApi(
  //     LoginRequestModel loginRequestModel) async {
  //       print(ApiEndPoints.login);
  //   var resp = await postTypeHelper(loginRequestModel, ApiEndPoints.login,isParamNeed: true,queryParameters:loginRequestModel.toJson());
  //   print("response ---->$resp");
  //   try {
  //     if (resp.containsKey("statusCode")) {
  //       if (resp["statusCode"] == 200) {
  //         Map<String, dynamic> msg = {"message": "success"};
  //         Map<String, dynamic> data = {};
  //         data.addAll(msg);
  //         data.addAll(resp["body"]);
  //         if (kDebugMode) {
  //           log("added value to map - ${data.toString()}");
  //         }
  //         print("data---> $data");
  //         return LoginResponseModel.fromJson(data);
  //       } else if (resp["statusCode"] == 300) {
  //         if (kDebugMode) {
  //           log("Exception Occurred: ${resp["errorMsg"]}");
  //         }
  //         if (resp['body'] != null) {
  //           return LoginResponseModel.withError(
  //               resp["body"]["message"].toString());
  //         } else {
  //           return LoginResponseModel.withError(resp['body']["errorMsg"].toString());
  //         }
  //       } else {
  //         throw Exception("Something went wrong");
  //       }
  //     }
  //   } catch (e) {
  //     print("catch block--> ${resp["body"]["message"]}");
  //     return LoginResponseModel.withError(resp["body"]["message"].toString());
  //   }
  //   return null;
  // }

  // Future<BranchesModel?> fetchAllBranch() async {
  //       print(ApiEndPoints.login);
  //   var resp = await postTypeHelper({},ApiEndPoints.fetchBranches);
  //   print("response ---->$resp");
  //   try {
  //     if (resp.containsKey("statusCode")) {
  //       if (resp["statusCode"] == 200) {
  //         Map<String, dynamic> msg = {"message": "success"};
  //         Map<String, dynamic> data = {};
  //         data.addAll(msg);
  //         data.addAll(resp["body"]);
  //         if (kDebugMode) {
  //           log("added value to map - ${data.toString()}");
  //         }
  //         print("data---> $data");
  //         return BranchesModel.fromJson(data);
  //       } else if (resp["statusCode"] == 300) {
  //         if (kDebugMode) {
  //           log("Exception Occurred: ${resp["errorMsg"]}");
  //         }
  //         if (resp['body'] != null) {
  //           return BranchesModel.withError(
  //               resp["body"]["message"].toString());
  //         } else {
  //           return BranchesModel.withError(resp['body']["errorMsg"].toString());
  //         }
  //       } else {
  //         throw Exception("Something went wrong");
  //       }
  //     }
  //   } catch (e) {
  //     print("catch block--> ${resp["body"]["message"]}");
  //     return BranchesModel.withError(resp["body"]["message"].toString());
  //   }
  //   return null;
  // }

  /// --------- data processor ------------ ///
  Future dataProcessor(dynamic reqModel, dynamic respModel, String endPoint, {bool isHeaderNeed = false, bool isParamNeed = false, Map<String,dynamic>? queryParameters, int param = 0}) async{
    var resp = await postTypeHelper(reqModel, endPoint, isHeaderNeed:isHeaderNeed, isParamNeed: isParamNeed, queryParameters: queryParameters, param: param);
    log("res---> $resp");
    try{
      if(resp.containsKey("statusCode")){
        if(resp["statusCode"]==200){
          Map<String, dynamic> msg = {"message": "success"};
          Map<String, dynamic> data = {};
          data.addAll(msg);
          data.addAll(resp["body"]);
          if (kDebugMode) {
            log("added value to map - ${data.toString()}");
             print("data---> $data");
          }
          return respModel.insertToJson(data);
        }
        else if (resp["statusCode"] == 300) {
          if (kDebugMode) {
            log("Exception Occurred: ${resp["errorMsg"]}");
          }
          if (resp['body'] != null) {
            log("body - > ${resp['body']}");
            return respModel.insertToError(resp["body"]["message"].toString());
          } else {
            return respModel.insertToError(resp['body']["errorMsg"].toString());
          }
        }
           else if (resp["statusCode"] == 400) {
          if (kDebugMode) {
            log("Exception Occurred: ${resp["errorMsg"]}");
          }
          if (resp['body'] != null) {
            return respModel.insertToError(resp["body"]["message"].toString());
          } else {
            return respModel.insertToError(resp['body']["errorMsg"].toString());
          }
        }
        else if(resp["statusCode"] == 49004){
          if(kDebugMode){
            log("Exception Occurred: ${resp["errorMsg"]}");
          }
          return respModel.insertToJson({"message":"Poor Network Connection", "dataList":{"actionStatus":49004}});
        }
        else{
          throw Exception("Something went wrong");
        }
      }
    }catch (e){
      return respModel.insertToError("Something went wrong");
    }
  }
}