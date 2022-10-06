import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  bool wasRun;
  List<String> log = [];

  WasRun(String name, {this.wasRun = false}) : super(name);

  @override
  void setUp() {
    log.add("setUp");
    wasRun = false;
  }

  void testMethod() {
    wasRun = true;
  }
}
