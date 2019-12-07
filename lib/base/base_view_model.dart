import 'package:mvvm_soped_rxdart/api/api_provider.dart';
import 'package:scoped_model/scoped_model.dart';

class BaseViewModel extends Model {

  final ApiProvider apiProvider = ApiProvider() ;

}
