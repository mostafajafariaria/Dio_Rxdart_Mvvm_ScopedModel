import 'package:mvvm_soped_rxdart/api/api.dart';
import 'package:mvvm_soped_rxdart/model/user_response.dart';

class ApiProvider {

  final MyApi _mobileBankApi =  MyApi();

  Future<UserResponse> getUser(){
    return _mobileBankApi.getUser();
  }


}