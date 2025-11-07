import 'package:isar/isar.dart';

part 'setting.g.dart';

@collection
class Setting {
  Id? id;

  @Index(unique: true)
  late String key;

  String? value;
}
