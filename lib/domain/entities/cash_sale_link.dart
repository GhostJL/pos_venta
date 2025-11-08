import 'package:hive/hive.dart';

part 'cash_sale_link.g.dart';

@HiveType(typeId: 2)
class CashSaleLink {
  @HiveField(0)
  int? id;

  @HiveField(1)
  late int cashSessionId;

  @HiveField(2)
  late int saleId;
}
