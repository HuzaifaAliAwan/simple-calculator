import 'package:calculator/utils/brand_colors.dart';

Map<String, dynamic> DecisionMaker(String value) {
  Map<String, dynamic> buttonInformation = {};
  value = value.toLowerCase();
  if (value == '=') {
    buttonInformation['BackgroundColor'] = BrandColors.yellow;
    buttonInformation['TextColor'] = BrandColors.black;
  } else if (value == '/' || value == 'x' || value == '-' || value == '+') {
    buttonInformation['BackgroundColor'] = BrandColors.purple;
    buttonInformation['TextColor'] = BrandColors.white;
  } else {
    buttonInformation['BackgroundColor'] = BrandColors.black;
    buttonInformation['TextColor'] = BrandColors.white;
  }

  return buttonInformation;
}
