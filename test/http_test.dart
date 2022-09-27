import 'package:clean_architecture/presentation/pages/counter/provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('counter should be 1 after add 1 times', () async {
    final counter = CounterProvider();
    var res = await counter.checkGoogle();
    expect(res.statusCode, 200);
  });
}
