import 'package:mvvm_soped_rxdart/base/base_view_model.dart';
import 'package:mvvm_soped_rxdart/model/user_response.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends BaseViewModel{

  final BehaviorSubject<UserResponse> _subject =
  BehaviorSubject<UserResponse>();


  getUser() async {
    UserResponse response = await apiProvider.getUser();
    _subject.sink.add(response);
    notifyListeners();
  }

  dispose() {
    _subject?.close();
  }

  BehaviorSubject<UserResponse> get subject => _subject;


}