import 'dart:ui';

class DeviceInfoUtils {
  ///
  ///Get the device language using the format en-US
  ///
  static String getDeviceLanguage(){
    Locale deviceLocale = PlatformDispatcher.instance.locale;
    return "${deviceLocale.languageCode}-${deviceLocale.countryCode}";
  }
}