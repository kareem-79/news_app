// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get greeting => 'صباح الخير';

  @override
  String get news_intro => 'إليك بعض الأخبار لك.';

  @override
  String get go_to_home => 'اذهب إلى الصفحة الرئيسية';

  @override
  String get theme => 'الثيم';

  @override
  String get dark => 'داكن';

  @override
  String get language => 'اللغة';

  @override
  String get english => 'إنجليزي';

  @override
  String get view_full_article => 'عرض المقال كاملاً';

  @override
  String get search => 'بحث';
}
