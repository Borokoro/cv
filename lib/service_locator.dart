import 'package:cv/cubits/language_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void _initializeServices() {
}

void _initializeCubits() {
  serviceLocator.registerSingleton<LanguageCubit>(LanguageCubit());
}

void setupDependencies() {
  _initializeServices();
  _initializeCubits();
}