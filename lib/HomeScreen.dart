// import 'package:flutter/material.dart';
// import 'ConnectivityService.dart';
// import 'NotificationService.dart';

// class HomeScreen extends StatelessWidget {
//   final ConnectivityService _connectivityService = ConnectivityService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Internet Connectivity Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             bool isConnected = await _connectivityService.checkConnectivity();

//             if (isConnected) {
//               NotificationService.showInternetConnectedNotification();
//             } else {
//               NotificationService.showInternetDisconnectedNotification();
//             }
//           },
//           child: Text('Check Internet Connectivity'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'ConnectivityService.dart';
import 'NotificationService.dart';
import 'main.dart'; // Import main.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internet Connectivity Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            checkAndShowConnectivityNotification(context);
          },
          child: Text('Check Internet Connectivity'),
        ),
      ),
    );
  }
}

void checkAndShowConnectivityNotification(BuildContext context) async {
  bool isConnected = await Provider.of<ConnectivityService>(context, listen: false).checkConnectivity();

  if (isConnected) {
    NotificationService.showInternetConnectedNotification();
  } else {
    NotificationService.showInternetDisconnectedNotification();
  }
}

