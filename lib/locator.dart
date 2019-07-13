import 'package:get_it/get_it.dart';
import './core/services/http_service.dart';
import './core/viewmodels/homepage_model.dart';
import './core/services/basic_setup_service.dart';
import './core/services/localstorage_service.dart';
import 'core/services/api.dart';


GetIt locator = GetIt();

Future setupLocator() async{

  

  locator.registerLazySingleton(() => NetworkService());

  var instance = await LocalStorageService.getInstance(); 
  locator.registerSingleton<LocalStorageService>(instance);
  
  locator.registerLazySingleton(() => BasicSetupServices());
  
  locator.registerLazySingleton(() => Api());

  locator.registerFactory(() => HomeModel());

  
}