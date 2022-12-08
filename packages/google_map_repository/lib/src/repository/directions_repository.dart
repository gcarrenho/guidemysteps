import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:dio/dio.dart';

import 'dioClient.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/directions/json?';

  final DioClient dioClient;

  DirectionsRepository({required this.dioClient});

  //DirectionsRepository() : _dio = dio ?? Dio();

  Future<Response> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    try {
      final response = await dioClient.get(
        _baseUrl,
        queryParameters: {
          'origin': '${origin.latitude},${origin.longitude}',
          'destination': '${destination.latitude},${destination.longitude}',
          'key': "AIzaSyAzXroOX8eTcd4kC5pmEJemfb-GcdxtHKM",
          'travelMode': "WALKING",
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
