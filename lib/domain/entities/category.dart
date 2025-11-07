import 'package:isar/isar.dart';

part 'category.g.dart';

@collection
class Category {
  Id? id;

  @Index(unique: true)
  late String name;

  String? description;
}
