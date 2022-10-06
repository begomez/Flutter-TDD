import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  bool wasRun;
  bool wasSetUp;

  WasRun(String name, {this.wasRun = false, this.wasSetUp = false}) : super(name);

  @override
  void setUp() {
    wasRun = false;
    wasSetUp = true;
  }

  void testMethod() {
    wasRun = true;
  }
}
