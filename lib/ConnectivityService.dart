// import 'package:connectivity/connectivity.dart';

// class ConnectivityService {
//   Future<bool> checkConnectivity() async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     return connectivityResult != ConnectivityResult.none;
//   }
// }

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class ConnectivityService extends ChangeNotifier {
  late Connectivity _connectivity;

  ConnectivityService() {
    _connectivity = Connectivity();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    notifyListeners();
  }

  Future<bool> checkConnectivity() async {
    var connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }
}
