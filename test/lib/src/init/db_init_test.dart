import 'package:mockito/annotations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';


@GenerateNiceMocks([MockSpec<HiveInterface>()])
import 'db_init_test.mocks.dart';

void main(){

  late MockHiveInterface mockHive;

  setUp(() {
    mockHive = MockHiveInterface();
  });
  
  test('Should init db before start app', () async {

    final tBoxName = 'testBox';

    when(mockHive.initFlutter())
        .thenAnswer((_) async => Future.value());

    final result = await mockHive.openBox(tBoxName);

    verify(mockHive.initFlutter());
    expect(mockHive.isBoxOpen(tBoxName), true);

  });
}