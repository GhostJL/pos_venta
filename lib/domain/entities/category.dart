import 'package:hive/hive.dart';

part 'category.g.dart';

@HiveType(typeId: 5)
class Category {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  String? description;
}
