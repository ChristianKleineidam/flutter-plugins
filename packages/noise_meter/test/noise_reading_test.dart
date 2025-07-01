import 'package:flutter_test/flutter_test.dart';
import 'package:noise_meter/noise_meter.dart';

void main() {
  test('NoiseReading computes correct decibel values', () {
    final reading = NoiseReading([0.1, 0.7]);
    expect(reading.maxDecibel, closeTo(87.21096, 0.001));
    expect(reading.meanDecibel, closeTo(82.35020, 0.001));
  });
}
