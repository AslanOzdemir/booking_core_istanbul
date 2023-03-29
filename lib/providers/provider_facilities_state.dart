import 'package:booking_core_istanbul/Models/facility.dart';
import 'package:booking_core_istanbul/services/facilities_api.dart';
import 'package:flutter/material.dart';

enum ListFacilitiesStates { initial, loading, succeeded, failed }

class FacilitiesPageState extends ChangeNotifier {
  ListFacilitiesStates state = ListFacilitiesStates.initial; // -1 starting

  List<Facility> facilities = [];
  static final FacilitiesPageState facilitiesPageState =
      FacilitiesPageState._privateConstructor();
  FacilitiesPageState._privateConstructor();

  factory FacilitiesPageState() {
    return facilitiesPageState;
  }

  getFacilities() async {
    state = ListFacilitiesStates.loading;
    notifyListeners();

    facilities = await FacilitiesAPI().getFacilities();
    state = ListFacilitiesStates.succeeded;
    notifyListeners();
  }
}
