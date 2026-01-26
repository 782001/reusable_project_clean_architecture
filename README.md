# Flutter Utilities Boilerplate

This is a **ready-to-use Flutter utilities setup** that simplifies common tasks such as:

- Localization (translations)
- SharedPreferences management
- Dio setup for APIs
- Navigation without context
- App-wide constants

It’s modular and can be copied into any Flutter project.

---
**Usage anywhere:**

```dart
final cashHelper = sl<CashHelper>();
final dio = sl<Dio>();
final navigator = sl<NavigatorService>();
------------Navigation--------
  nav().pushNamed(Routes.authWelcomeScreen);
------------Translation----------
Loc.tr(context,AppStrings.login)
```

## 1️⃣ NavigatorService

✅✅A singleton service to handle **navigation from anywhere** in the app, without needing `BuildContext`.
it added to getIt in injectionContainer.dart
```dart
import 'package:flutter/material.dart';
NavigatorService nav() => sl<NavigatorService>();
class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext get context => navigatorKey.currentContext!;
}

final navigator = NavigatorService();
```

**Usage:**

```dart
  nav().pushNamed(Routes.authWelcomeScreen);

// Or use helper for context
navigator.navigatorKey.currentState!.pushNamed(Routes.authWelcomeScreen);
// Or use helper for context
navigator.context;
```

---

## 2️⃣ CashHelper (SharedPreferences)
✅✅  it added to getIt in injectionContainer.dart
Wrapper around SharedPreferences for easy access and consistent use.

```dart
import 'package:shared_preferences/shared_preferences.dart';

class CashHelper {
  final SharedPreferences sharedPreferences;

  CashHelper(this.sharedPreferences);

  dynamic getData({required String key}) => sharedPreferences.get(key);
  bool? getBoolData({required String key}) => sharedPreferences.getBool(key);
  Future<bool> saveData({required String key, required dynamic value}) async {
 if (value is String) {
      if (key == 'token') {
       **--- i do this to make token saved in ApiConstance.userToken **  
**Usage:**
can access it  ApiConstance.userToken;

        ApiConstance.userToken = value as String? ?? '';

      }
      return await sharedPreferences.setString(key, value);
    }    if (value is int) return sharedPreferences.setInt(key, value);
    if (value is bool) return sharedPreferences.setBool(key, value);
    if (value is double) return sharedPreferences.setDouble(key, value);
    throw UnsupportedError('Unsupported type');
  }

  Future<bool> removeData({required String key}) => sharedPreferences.remove(key);
  Future<bool> clearAll() => sharedPreferences.clear();
}
```

**Usage:**

```dart
final token = sl<CashHelper>().getData(key: 'token');
await sl<CashHelper>().saveData(key: 'token', value: 'abc123');
```

---

## 3️⃣ Dio Setup

Centralized network client for API requests.

```dart
import 'package:dio/dio.dart';

class DioFactory {
  Dio createDio() {
    final dio = Dio(BaseOptions(
      baseUrl: ApiConstance.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    ));
    return dio;
  }
}

كمان بتبعت اللغه التوكين تلقائي مع الريكويست
يعني مش محتاج ابعتهم مع  الريكويست كل مره
    // 🌍 Language interceptor
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final lang = cashHelper.getData(key: 'lang') ?? 'en';
          options.headers['Accept-Language'] = lang;

          final token = ApiConstance.userToken;
          options.headers['Authorization'] = 'Bearer $token';

          return handler.next(options);
        },
      ),
    );
```

**Usage:**


1️⃣1️⃣**Usage:**1️⃣1️⃣:
```dart
 Directly from GetIt
final dio = sl<Dio>();
final response = await dio.get('/users');
```

2️⃣2️⃣**Usage:**2️2️
او ممكن نخلي الكونستراكتور ياخدها لما نستدعي الريموت داتا سورس جوه  الinjection_container.dart

 Passing Dio to Remote Data Source via Injection Container
```dart
class AddToCartRemoteDataSource extends AddToCartBaseRemoteDataSource {
  final Dio dio;


  AddToCartRemoteDataSource(this.dio);


  Future<void> addItem(Map<String, dynamic> data) async {
    final response = await dio.post('/cart/add', data: data);
    // handle response
  }
}


// In injection_container.dart
sl.registerLazySingleton(() => AddToCartRemoteDataSource(sl<Dio>()));

✅ Now every request automatically includes the user's language and token headers without manually setting them each time.

```

---

## 4️⃣ Localization Shortcut (`Loc` & `translation_helper`)

Avoid writing long `AppLocalizations.of(context)!.translate(...)` calls.

**Shortcut helper:**

```dart
class Loc {
  static String tr(String key) => AppLocalizations.of(navigator.context)!.translate(key)!;
}
```

**Usage:**

```dart
Text(Loc.tr(context,'login'))
```
## AppStrings
Optional with `AppStrings` keys:

```dart
class AppStrings {

  ///-----------------------------
  ///---------Laguage-------------

  static String login = "login";
}


Text(Loc.tr(context,AppStrings.login))
```

---

## 5️⃣ GetIt Dependency Injection

All services are registered with **GetIt** for easy access anywhere.

```dart
final sl = GetIt.instance;

Future<void> init() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPrefs);
  sl.registerLazySingleton(() => CashHelper(sl<SharedPreferences>()));
  sl.registerLazySingleton(() => TranslationService());
  sl.registerLazySingleton(() => DioFactory().createDio());
  sl.registerLazySingleton(() => NavigatorService());
}
```



---

## ✅ Advantages

- Centralized navigation, storage, API, and translation
- Shortcut methods for cleaner code
- Reusable in any Flutter project
- Hot Restart Friendly
- Easy to maintain constants in `AppStrings`

---

## 6️⃣ Recommended Folder Structure

```
lang/
  ├─ ar.json
  ├─ en.json
lib/
├─ core/
│  ├─ network/
│  │  ├─ dio_factory.dart
│  ├─ storage/
│  │  ├─ cashhelper.dart
├─ config/
│  ├─ services/
│  │  ├─ injection_container.dart
│  │  ├─ navigator_service.dart

```

---

This setup allows you to copy the folder structure and utilities into any Flutter project and get started immediately.

