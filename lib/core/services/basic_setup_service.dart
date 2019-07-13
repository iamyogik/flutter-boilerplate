import 'package:flutter/widgets.dart';
import '../../ui/views/homepage.dart';
import '../../locator.dart';
import './localstorage_service.dart';
import './localstorage_service.dart';

class BasicSetupServices{

  final GlobalKey<NavigatorState> _navigatorKey = new GlobalKey<NavigatorState>();

  get navigatorKey => _navigatorKey;

  
  Widget getStartScreen(){


    LocalStorageService storageService = locator<LocalStorageService>();
    
    return HomePage();

    //! Check which page you have to return on the app start up using the LocalStorage service and return it. 

    // if (user != null && user.toJson()['token'] != null ) {

    //   var userData = user.toJson();

    //   if(!userData['mobile_verified']){
    //     return MobileVerifyPage();
    //   }

    //   if(userData['onboarding_required']){
    //     return OnboardingPage();
    //   }

    //   return HomePage();
    // } else {
    //   return LoginPage();
    // }


  }






}

