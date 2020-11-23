import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tanyao/i18n/core/core-en.dart';
import 'package:tanyao/i18n/core/core-zh.dart';

class CoreLocalizations {
  final Locale locale;

  CoreLocalizations(this.locale);

  static CoreLocalizations of(BuildContext context) {
    return Localizations.of<CoreLocalizations>(context, CoreLocalizations);
  }

  static _CoreLocalizationsDelegate delegate = _CoreLocalizationsDelegate();

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': coreLocalizationEnglish,
    'zh': coreLocalizationChinese,
  };

  Map<String, String> get _stringMap {
    final Map<String, String> map = _localizedValues[locale.languageCode];
    if (map == null) {
      return {};
    }
    return map;
  }

  String getString(String key) {
    final String value = this._stringMap[key];
    if (value == null) {
      return "[$key]";
    }
    return value;
  }

  Text getText(String key) {
    return Text(this.getString(key));
  }
}

class _CoreLocalizationsDelegate
    extends LocalizationsDelegate<CoreLocalizations> {
  const _CoreLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<CoreLocalizations> load(Locale locale) {
    return SynchronousFuture<CoreLocalizations>(
      CoreLocalizations(locale),
    );
  }

  @override
  bool shouldReload(_CoreLocalizationsDelegate before) => false;
}
