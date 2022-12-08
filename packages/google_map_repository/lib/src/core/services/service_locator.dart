import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:google_map_repository/src/repository/directions_repository.dart';
import 'package:google_map_repository/src/core/services/directions_service.dart';

import '../../repository/dioClient.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(DirectionsService(getIt.get<DirectionsRepository>()));
  getIt.registerSingleton(DirectionsRepository(dioClient: getIt<DioClient>()));
}
