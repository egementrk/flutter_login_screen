import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get fieldValue => height * 0.08;
  double get mediumValue => height * 0.04;

  double get sizedBoxMedium => width * 0.04;
  double get buttonValueH => height * 0.06;
  double get buttonValueW => height * 1;
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(24.0);
}
