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

  String getString(
    String key, {
    Map<String, String> replacements,
  }) {
    String value = this._stringMap[key];

    if (value == null) {
      if (replacements is Map) {
        final List<String> replaced = [];

        for (String replacementKey in replacements.keys) {
          final String replacedValue = replacements[replacementKey];
          replaced.add("[$replacementKey - $replacedValue]");
        }
        return "[$key] (${replaced.join(",")})";
      }
      return "[$key]";
    }

    if (replacements is Map) {
      for (String replacementKey in replacements.keys) {
        value = value.replaceFirst(
          "{$replacementKey}",
          this.getString(
            replacementKey,
            replacements: replacements,
          ),
        );
      }
    }

    return value;
  }

  Text getText(
    String key, {
    Map<String, String> replacements,
  }) {
    return Text(this.getString(
      key,
      replacements: replacements,
    ));
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
