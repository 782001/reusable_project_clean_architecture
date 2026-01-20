import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmacy/app_features/localization/presentation/cubit/locale_cubit.dart';
import 'package:pharmacy/config/locale/app_localizations_setup.dart';
import 'package:pharmacy/config/routes/app_routes.dart';
import 'package:pharmacy/config/services/injection_container.dart';
import 'package:pharmacy/config/services/navigator_service.dart';
import 'package:pharmacy/core/network/api_constance.dart';
import 'package:pharmacy/core/storage/cashhelper.dart';

import 'config/services/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(
    const MyApp(),
   
  );
  ApiConstance.userToken =
      sl<CashHelper>().getData(key: 'token') as String? ?? '';
  log("userToken:${ApiConstance.userToken}");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<LocaleCubit>()..getSavedLang()),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) {
          return previousState != currentState;
        },
        builder: (context, state) {
          return MaterialApp(
            navigatorKey: sl<NavigatorService>().navigatorKey,
            title: 'title',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF009688),
              ),
              useMaterial3: true,
            ),
            locale: state.locale,
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localeResolutionCallback:
                AppLocalizationsSetup.localeResolutionCallback,
            localizationsDelegates:
                AppLocalizationsSetup.localizationsDelegates,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
