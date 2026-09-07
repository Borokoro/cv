import 'package:cv/types/enum/language.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial(getInitialLanguage()));

  static Language getInitialLanguage() {
    try {
      final String deviceLanguage = WidgetsBinding.instance.platformDispatcher.locale.languageCode;
      return Language.fromLangCode(deviceLanguage);
    } catch (_) {
      return Language.en;
    }
  }

  Language getLanguageKey(String langCode) {
    return Language.fromLangCode(langCode);
  }

  Language getCurrentLanguage() {
    return state.languageCode;
  }

  void switchLanguage({required Language languageKey}) {
    emit(SwitchingLanguage(languageKey));
    emit(SwitchedLanguage(languageKey));
  }
}
