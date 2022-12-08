import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../google_map_repository.dart';
import '../core/services/directions_service.dart';
import '../core/services/service_locator.dart';

class HandlerDirections {
  // --------------- Repository -------------
  final directionsService = getIt.get<DirectionsService>();

  // -------------- Textfield Controller ---------------
  //final nameController = TextEditingController();
  //final jobController = TextEditingController();

  // -------------- Local Variables ---------------
  //final List<NewUser> newUsers = [];

  // -------------- Methods ---------------

  Future<Directions> getDirections(LatLng origin, LatLng destination) async {
    final direction = await directionsService.getDirections(
        origin: origin, destination: destination);
    return direction;
  }
}
