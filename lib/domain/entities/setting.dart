import 'package:hive/hive.dart';

part 'setting.g.dart';

@HiveType(typeId: 16)
class Setting {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String key;

  @HiveField(2)
  late String value;

  @HiveField(3)
  String? description;
}
