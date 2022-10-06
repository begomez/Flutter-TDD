import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_result.dart';

@aCustomReflectable
abstract class TestCase {
  String name;

  TestCase(this.name);

  void setUp();

  TestResult run() {
    TestResult result = TestResult();

    try {
      result.testStarted();

      setUp();

      var instanceMirror = aCustomReflectable.reflect(this);

      instanceMirror.invoke(name, []);

      tearDown();

      return result;
    } on Exception {
      result.testFailed();
    }

    return result;
  }

  void tearDown();
}
