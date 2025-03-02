import 'dart:ui';

class DeviceInfoUtils {
  static String getDeviceLanguage(){
    Locale deviceLocale = PlatformDispatcher.instance.locale;
    return "${deviceLocale.languageCode}-${deviceLocale.countryCode}";
  }
}