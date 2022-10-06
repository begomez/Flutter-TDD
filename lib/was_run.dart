import 'package:reflectable/reflectable.dart';

/// Mirroring class to apply reflection on other classes
class CustomReflectable extends Reflectable {
  const CustomReflectable() : super(invokingCapability);
}

@aCustomReflectable
const aCustomReflectable = CustomReflectable();

@aCustomReflectable
class WasRun {
  bool wasRun;
  String name;

  WasRun(this.name, {this.wasRun = false});

  void testMethod() {
    wasRun = true;
  }

  void run() {
    var instanceMirror = aCustomReflectable.reflect(this);

    instanceMirror.invoke(name, []);
  }
}
