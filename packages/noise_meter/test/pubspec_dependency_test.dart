import 'dart:io';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:test/test.dart';

void main() {
  test('uses local audio_streamer dependency', () {
    final pubspecContent = File('pubspec.yaml').readAsStringSync();
    final pubspec = Pubspec.parse(pubspecContent);
    final dependency = pubspec.dependencies['audio_streamer'];
    expect(dependency, isA<PathDependency>());
    final pathDep = dependency as PathDependency;
    // The path should point to the sibling audio_streamer package
    expect(pathDep.path, '../audio_streamer');
  });
}
