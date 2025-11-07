import 'package:isar/isar.dart';
import 'package:pos_venta/domain/entities/cash_session.dart';
import 'package:pos_venta/domain/entities/user.dart';

part 'cash_movement.g.dart';

@collection
class CashMovement {
  Id? id;

  final session = IsarLink<CashSession>();

  late String type; // ingreso, retiro

  late double amount;

  String? description;

  final user = IsarLink<User>();

  DateTime createdAt = DateTime.now();
}
