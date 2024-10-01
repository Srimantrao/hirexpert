import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetController with ChangeNotifier {
  bool _isConnected = true;
  bool get isConnected => _isConnected;

  InternetController() {
    checkConnectivity();
    Connectivity().onConnectivityChanged.listen((result) {
      bool newConnectionStatus = (result != ConnectivityResult.none);
      if (newConnectionStatus != _isConnected) {
        _isConnected = newConnectionStatus;
        notifyListeners(); // Notify listeners only if there is a change
      }
    });
  }

  Future<void> checkConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    bool newConnectionStatus = (result != ConnectivityResult.none);

    if (newConnectionStatus != _isConnected) {
      _isConnected = newConnectionStatus;
      notifyListeners(); // Notify listeners only if there is a change
    }
  }
}