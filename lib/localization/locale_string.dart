


import 'package:get/get.dart';
import 'package:myelin_web/localization/locale_ar.dart';
import 'package:myelin_web/localization/locale_en.dart';
class LocaleString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'ar_AR': localeAr, 'en_US': localeEn};
}
