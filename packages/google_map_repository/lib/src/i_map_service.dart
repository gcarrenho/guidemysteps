/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_map_repository/google_map_repository.dart';


abstract class IMapService {
  //final INetworkManager service;
  final GlobalKey<ScaffoldState> scaffoldKey;
  IMapService(this.service, this.scaffoldKey);

  Future<List<Locations>> getAllPoints();
  //Future<ClusterCoordinate> getClusterPoints();

  void showErrorMessage(IErrorModel response) {
    if (this.scaffoldKey != null) {
      scaffoldKey.currentState
          .showSnackBar(SnackBar(content: Text(response.description)));
    }
  }
}
*/
