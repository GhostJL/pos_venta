import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pos_venta/infrastructure/models/role_model.dart';

// Importar todos los modelos de la capa de Infrastructure (Data)
// Asumiendo que tus modelos están en 'infrastructure/models/'

class HiveDatasource {
  // 1. Singleton (Mejora: acceso estático único)
  static final HiveDatasource _instance = HiveDatasource._internal();
  factory HiveDatasource() => _instance;

  // Constructor privado para el Singleton
  HiveDatasource._internal() {
    _db = _initDb();
  }

  late final Future<void>
      _db; // Cambiamos a Future<void> ya que solo necesitamos esperar la inicialización

  Future<void> _initDb() async {
    // 1. Obtener el directorio
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    // 2. REGISTRO DE ADAPTADORES (¡Lo que faltaba!)
    // Debes registrar un adaptador por cada clase @HiveType que uses.
    // Los adaptadores generados son 'NombreClaseAdapter()'.
    Hive.registerAdapter(RoleModelAdapter());

    // Si tienes más modelos, agrégalos aquí...

    // No necesitamos retornar Hive, solo asegurar que la inicialización y registros terminaron.
  }

  // Método para abrir y obtener la caja
  Future<Box<T>> box<T>(String boxName) async {
    // Aseguramos que la inicialización haya terminado antes de abrir la caja
    await _db;

    // Verificamos si la caja ya está abierta para evitar errores si se llama múltiples veces
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    }

    return await Hive.openBox<T>(boxName);
  }
}
