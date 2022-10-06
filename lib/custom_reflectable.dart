import 'package:reflectable/reflectable.dart';

/// Mirroring class to apply reflection on other classes
class CustomReflectable extends Reflectable {
  const CustomReflectable() : super(invokingCapability);
}

@aCustomReflectable
const aCustomReflectable = CustomReflectable();
