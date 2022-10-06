import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  bool wasRun;
  List<String> _log = [];

  WasRun(String name, {this.wasRun = false}) : super(name);

  @override
  void setUp() {
    _log.add("setUp");
    wasRun = false;
  }

  void testMethod() {
    wasRun = true;
  }

  bool logContains({required String target}) => _log.contains(target);
}
