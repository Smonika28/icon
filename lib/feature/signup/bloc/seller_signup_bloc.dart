import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:groomely_seller/feature/signup/repo/seller_signup_repo.dart';
import 'package:groomely_seller/utils/storage/local_storage.dart';
import 'package:meta/meta.dart';
import '../model/seller_signup_res_model.dart';
part 'seller_signup_event.dart';
part 'seller_signup_state.dart';



class SellerSignupBloc extends Bloc<SellerSignupEvent, SellerSignupState> {
  SellerSignupBloc() : super(SellerSignupInitial()) {
    SignupRepository repository = SignupRepository();
    on<SellerSignupEvents>((event, emit) async {
      Map<String, dynamic> requestModel ={
        "first_name":event.firstName,
        "last_name":  event.lastName,
        "email":  event.email,
        "phone":  event.phone,
        "zipcode":  event.zipcode,
        "password":  event.password,
        "confirm_password":  event.cfpassword,
        "user_type":"USER"
      };
      try {
        emit(SellerSignupLodingState());
        print(requestModel);
        final myList = await repository.getSignup(requestModel);
        print('myListdata--> $myList');
        print("statusss-->  ${myList.status}");
        if (myList.status == true) {
          LocalStorageService()
              .saveToDisk(LocalStorageService.ACCESS_TOKEN_KEY, myList.data.authToken);
          emit(SellerSignupLoadedState(responseModel: myList));
        } else {
          emit(SellerSignupErrorState(errorMsg: myList.message.toString()));
        }
      } on NetworkError {
        emit(SellerSignupErrorState(errorMsg: "No Internet Connection"));
      }
    });
  }
}
