import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<Locale> {

  LanguageCubit() : super(en);

  static final vi = Locale('vi');
  static final en = Locale('en');

  void toggleLanguage() {
    emit(state == vi ? en : vi);
  }

}