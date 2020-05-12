import 'package:flutter_learn/ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return DXSizeFit.setPx(this);
  }

  double get rpx {
    return DXSizeFit.setRpx(this);
  }
}