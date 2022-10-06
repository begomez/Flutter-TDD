import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  bool wasRun;
  bool wasSetUp;

  WasRun(String name, {this.wasRun = false, this.wasSetUp = true}) : super(name);

  void testMethod() {
    wasRun = true;
  }
}
