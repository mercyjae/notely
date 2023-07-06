
import 'package:flutter/material.dart';
import 'package:notely/view/screens/sign_up_screen.dart';
import 'package:notely/view/screens/edit_note.dart';
import 'package:notely/view/screens/note_creation.dart';
import 'package:notely/view/screens/onboarding_screen.dart';
import 'package:notely/view/screens/profile_screen.dart';
import 'package:notely/view/screens/recent_notes.dart';
import 'package:notely/view/screens/subscribe_screen.dart';

class AppRouter{
  const AppRouter._();

  static const onboarding = '/onboarding';
  static const signUp = '/signUp';
  static const subscribe = '/subscribe';
  static const noteCreation = '/noteCreation';
  static const editNote = '/editNote';
  static const profile = '/profile';
  static const recentNote = '/recentNote';

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case onboarding:
      return _route( const OnboardingScreen());
      case signUp:
       return  _route(const SignUpScreen());
       case subscribe:
       return _route(const SubscribeScreen());
       case noteCreation:
       return _route(const NoteCreation());
       case editNote:
       return _route(const EditNote());
       case recentNote:
       return _route(const RecentNotes());
       case profile:
       return _route(const ProfileScreen());
       default:
       return _route(const Scaffold());
       
    }
  }

  static PageRoute<dynamic> _route(Widget child){
    return MaterialPageRoute(builder: (context){
      return child;
    });
  }

}