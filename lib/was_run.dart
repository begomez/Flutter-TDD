import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_case.dart';

@aCustomReflectable
class WasRun extends TestCase {
  final List<String> _log = [];

  WasRun(String name) : super(name);

  @override
  void setUp() {
    _log.add("setUp");
  }

  void testMethod() {
    _log.add("testMethod");
  }

  bool logsAreEqual({required List<String> target}) {
    assert(_log.length == target.length);

    for (var i = 0; i < _log.length; i++) {
      if (target[i] != _log[i]) {
        return false;
      }
    }

    return true;
  }
}
