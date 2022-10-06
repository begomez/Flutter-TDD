import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
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
