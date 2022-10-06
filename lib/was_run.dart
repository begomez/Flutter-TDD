import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  bool wasRun;

  WasRun(String name, {this.wasRun = false}) : super(name);

  void testMethod() {
    wasRun = true;
  }
}
