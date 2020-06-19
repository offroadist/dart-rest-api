import 'dart:io';

import 'package:messagebird/hlr.dart';
import 'package:test/test.dart';

import '../credentials.dart';

void main() {
  group('HlrService', () {
    Credentials credentials;
    String id;
    HlrService hlrService;

    setUp(() {
      credentials = Credentials.from(Platform.environment);
      hlrService = ApiHlrService(credentials.API_LIVE_KEY);
    });

    test('should create an HLR', () {
      hlrService.create(credentials.MSISDN).then((hlr) {
        expect(hlr.id, isNotNull);
        expect(hlr.status, isIn([HlrStatus.sent, HlrStatus.active]));
        id = hlr.id;
      });
    });

    test('should list HLRs', () {
      hlrService.list().then((list) {
        expect(list, isNotEmpty);
      });
    });

    test('should remove an HLR', () {
      hlrService.remove(id);
      hlrService.read(id).then((hlr) {
        expect(hlr, isNull);
      });
    });
  });
}
