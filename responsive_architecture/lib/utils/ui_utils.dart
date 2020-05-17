import 'package:flutter/cupertino.dart';
import 'package:responsivearchitecture/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  var orientation = mediaQueryData.orientation;

  // fixed device width (changes with orientation)
  double deviceWidth = 0;

  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQueryData.size.height;
  } else {
    deviceWidth = mediaQueryData.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenType.Dekstop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}