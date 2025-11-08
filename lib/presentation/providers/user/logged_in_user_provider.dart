import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_venta/domain/entities/user.dart';

final loggedInUserProvider = StateProvider<User?>((ref) => null);
