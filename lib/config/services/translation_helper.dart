import 'package:pharmacy/config/locale/app_localizations.dart';
import 'package:pharmacy/config/services/navigator_service.dart';

class Loc {
  /// Translate key quickly
  static String tr(String key) {
    return AppLocalizations.of(
      nav().navigatorKey.currentContext!,
    )!.translate(key)!;
  }
}
