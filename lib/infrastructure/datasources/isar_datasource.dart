import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos_venta/domain/entities/entities.dart';

class IsarDatasource {
  late Future<Isar> db;

  IsarDatasource() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([
        CashMovementSchema,
        CashRegisterSchema,
        CashSaleLinkSchema,
        CashSessionSchema,
        CashTransactionSchema,
        CategorySchema,
        InventorySchema,
        InventoryMovementSchema,
        PaymentSchema,
        ProductSchema,
        ProductPriceSchema,
        RoleSchema,
        SaleSchema,
        SaleItemSchema,
        SettingSchema,
        SupplierSchema,
        UserSchema,
        UserRoleSchema,
      ], directory: dir.path);
    }

    return Future.value(Isar.getInstance());
  }
}
