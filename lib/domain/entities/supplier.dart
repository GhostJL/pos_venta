import 'package:hive/hive.dart';

part 'supplier.g.dart';

@HiveType(typeId: 21)
class Supplier {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late String name;

  @HiveField(2)
  String? phone;

  @HiveField(3)
  String? address;
}
