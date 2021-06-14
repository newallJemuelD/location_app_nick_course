import 'package:flutter_test/flutter_test.dart';
// import 'package:image_test_utils/image_test_utils.dart';

import 'package:location_app_module1/app.dart';
import 'package:location_app_module1/mocks/mock_location.dart';

import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('test app started', (WidgetTester tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(App());

      final mockLocation = MockLocation.fetchAny();

      expect(find.text(mockLocation.name!), findsOneWidget);
      expect('${mockLocation.name}blah', findsNothing);
    });
  });
}
