import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _service = '';
  String get service => _service;
  set service(String value) {
    _service = value;
  }

  String _quantity = '';
  String get quantity => _quantity;
  set quantity(String value) {
    _quantity = value;
  }

  String _location = '';
  String get location => _location;
  set location(String value) {
    _location = value;
  }

  String _timeslot = '';
  String get timeslot => _timeslot;
  set timeslot(String value) {
    _timeslot = value;
  }

  double _price = 0.0;
  double get price => _price;
  set price(double value) {
    _price = value;
  }

  String _username = '';
  String get username => _username;
  set username(String value) {
    _username = value;
  }

  String _destination = '';
  String get destination => _destination;
  set destination(String value) {
    _destination = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
