import 'package:dio/dio.dart';
import 'package:google_map_repository/src/repository/directions_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../google_map_repository.dart';

class DirectionsService {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/directions/json?';

  final DirectionsRepository directionsRepo;

  DirectionsService(this.directionsRepo);

  //DirectionsRepository() : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    try {
      final response = await directionsRepo.getDirections(
        origin: origin,
        destination: destination,
        /*queryParameters: {
        'origin': '${origin.latitude},${origin.longitude}',
        'destination': '${destination.latitude},${destination.longitude}',
        'key': "AIzaSyAzXroOX8eTcd4kC5pmEJemfb-GcdxtHKM",
        'travelMode': "WALKING",
      },*/
      );

      if (response.statusCode == 200) {
        return Directions.fromMap(response.data);
      }
      return Directions.fromMap(response.data);
    } on DioError catch (e) {
      final errorMessage = "error"; //DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
