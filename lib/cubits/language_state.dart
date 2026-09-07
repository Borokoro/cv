part of 'language_cubit.dart';

abstract class LanguageState extends Equatable {
  final Language languageCode;

  const LanguageState(this.languageCode);

  @override
  List<Object> get props => [languageCode];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial(super.languageCode);
}

class SwitchingLanguage extends LanguageState {
  const SwitchingLanguage(super.languageCode);
}

class SwitchedLanguage extends LanguageState {
  const SwitchedLanguage(super.languageCode);
}