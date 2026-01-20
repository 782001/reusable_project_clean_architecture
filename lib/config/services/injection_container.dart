import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pharmacy/app_features/localization/data/datasources/lang_local_data_source.dart';
import 'package:pharmacy/app_features/localization/data/repositories/lang_repository_impl.dart';
import 'package:pharmacy/app_features/localization/domain/repositories/lang_repository.dart';
import 'package:pharmacy/app_features/localization/domain/usecases/change_lang.dart';
import 'package:pharmacy/app_features/localization/domain/usecases/get_saved_lang.dart';
import 'package:pharmacy/app_features/localization/presentation/cubit/locale_cubit.dart';
import 'package:pharmacy/config/services/navigator_service.dart';
import 'package:pharmacy/core/network/dio_factory.dart';
import 'package:pharmacy/core/storage/cashhelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features

  // Blocs

  sl.registerFactory<LocaleCubit>(
    () => LocaleCubit(getSavedLangUseCase: sl(), changeLangUseCase: sl()),
  );
  // Use cases
  sl.registerLazySingleton<ChangeLangUseCase>(
    () => ChangeLangUseCase(langRepository: sl()),
  );

  sl.registerLazySingleton<GetSavedLangUseCase>(
    () => GetSavedLangUseCase(langRepository: sl()),
  );

  // sl.registerLazySingleton<GetPlacesUseCase>(
  //     () => GetPlacesUseCase(placesBaseRepository: sl()));

  /// --------------------------
  /// --------------------------
  // Repository
  sl.registerLazySingleton<LangRepository>(
    () => LangRepositoryImpl(langLocalDataSource: sl()),
  );
  // sl.registerLazySingleton<GetRecentlyAddedCompaniesBaseRepository>(
  //     () => GetRecentlyAddedCompaniesRepository(sl()));

  /// --------------------------
  /// --------------------------
  // Data Sources

  sl.registerLazySingleton<LangLocalDataSource>(
    () => LangLocalDataSourceImpl(sharedPreferences: sl()),
  );

  // sl.registerLazySingleton<login_with_mopile_BaseRemoteDataSource>(
  //     () => login_with_mopile_RemoteDataSource());

  //! Core

  /// --------------------------
  /// External
  /// --------------------------
  final sharedPrefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  sl.registerLazySingleton<CashHelper>(
    () => CashHelper(sl<SharedPreferences>()),
  );

  /// --------------------------
  /// Local Storage
  /// --------------------------

  /// --------------------------
  /// Network (Dio)
  /// --------------------------
  sl.registerLazySingleton<Dio>(() => DioFactory(sl()).createDio());

  // Register NavigatorService as singleton
  sl.registerLazySingleton<NavigatorService>(() => NavigatorService());
}

// void injectFCMToken(String? fcmToken) {
//   if (sl.isRegistered(instance: fcmToken, instanceName: 'fcmToken')) {
//     sl.unregister(instanceName: 'fcmToken');
//   }
//   sl.registerLazySingleton<String>(() => fcmToken ?? '', instanceName: 'fcmToken');
// }
void injectFCMToken(String? fcmToken) {
  if (sl.isRegistered<String>(instanceName: 'fcmToken')) {
    sl.unregister<String>(instanceName: 'fcmToken');
  }
  sl.registerLazySingleton<String>(
    () => fcmToken ?? '',
    instanceName: 'fcmToken',
  );
}

String get tolbaFcmToken => sl<String>(instanceName: 'fcmToken');
