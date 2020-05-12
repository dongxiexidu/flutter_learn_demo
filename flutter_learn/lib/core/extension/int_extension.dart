import 'package:flutter_learn/ui/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return DXSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return DXSizeFit.setRpx(this.toDouble());
  }
}