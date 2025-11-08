import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDatasource {
  late final Future<HiveInterface> _db;

  HiveDatasource() {
    _db = _initDb();
  }

  Future<HiveInterface> _initDb() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    return Hive;
  }

  Future<Box<T>> box<T>(String boxName) async {
    final hive = await _db;
    return await hive.openBox<T>(boxName);
  }
}
