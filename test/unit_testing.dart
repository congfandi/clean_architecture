import 'package:clean_architecture/presentation/pages/counter/provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('counter should be 1 after add 1 times', () {
    final counter = CounterProvider();
    counter.increment();
    expect(counter.state.count, 0);
  });
}
