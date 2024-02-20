// import 'package:flutter/material.dart';
// import 'package:calculatorvtwo_app/AboutView.dart';
// import 'package:calculatorvtwo_app/CalculatorView.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// import 'ThemeProvider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   final ThemeData? theme;

//   const MyApp({Key? key, this.theme}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigator',
//       theme: theme,
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Maurice DevOps Platform!'
        
//         ),
        
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               Scaffold.of(context).openDrawer();
//             },
//           ),
//         ),
//       ),
//       drawer: Container(
//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes the shadow direction
//             ),
//           ],
//         ),
//         child: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               Container(
//                 constraints: BoxConstraints(
//                   maxWidth: 100,
//                 ),
//                 child: DrawerHeader(
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                   ),
//                   child: Text(
//                     'Calculate',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Home'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   // Navigate to the home screen or any other screen as needed
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.calculate),
//                 title: Text('Calculator'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Calculator(),
//                     ),
//                   );
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.info),
//                 title: Text('About'),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => AboutScreen(),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(20.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Welcome To DevOps Platform!',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     'All you need to Calculate is Here!!',
//                     style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Scaffold(
//             backgroundColor: Color.fromARGB(0, 30, 12, 194),
//             bottomNavigationBar: BottomNavigationBar(
//               items: <BottomNavigationBarItem>[
//                 BottomNavigationBarItem(
//                   icon: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                     ),
//                     child: CircleAvatar(
//                       child: Icon(Icons.home),
//                       backgroundColor: Color.fromARGB(255, 37, 66, 163),
//                     ),
//                   ),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: CircleAvatar(
//                       child: Icon(Icons.calculate),
//                       backgroundColor: Colors.transparent,
//                     ),
//                   ),
//                   label: 'Calculator',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                     ),
//                     child: CircleAvatar(
//                       child: Icon(Icons.info),
//                       backgroundColor: Colors.transparent,
//                     ),
//                   ),
//                   label: 'About Us',
//                 ),
//               ],
//               selectedItemColor: Colors.blue,
//               onTap: (int index) {
//                 if (index == 1) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Calculator(),
//                     ),
//                   );
//                 } else if (index == 2) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => AboutScreen(),
//                     ),
//                   );
//                 }
//               },
//             ),
//             body: Center(),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'ThemeProvider.dart'; // Import the ThemeProvider class
// import 'package:calculatorvtwo_app/AboutView.dart'; // Import your Calculator class
// import 'package:calculatorvtwo_app/AboutView.dart'; // Import your AboutScreen class


// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ThemeProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ThemeProvider>(
//       builder: (context, themeProvider, child) {
//         return MaterialApp(
//           title: 'Navigator',
//           theme: themeProvider.themeData,
//           home: const HomeScreen(),
//         );
//       },
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Maurice DevOps Platform!'),
//         leading: Builder(
//           builder: (context) => IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               Scaffold.of(context).openDrawer();
//             },
//           ),
//         ),
//       ),
//       drawer: Container(
//         // ... (unchanged)
//       ),
//       body: Stack(
//         children: [
//           Center(
//             child: Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 // ... (unchanged)
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Welcome To DevOps Platform!',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue,
//                     ),
//                   ),
//                   SizedBox(height: 16.0),
//                   Text(
//                     'All you need to Calculate is Here!!',
//                     style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Scaffold(
//             // ... (unchanged)
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ConnectivityService.dart';
import 'NotificationService.dart';
import 'HomeScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ConnectivityService>(
          create: (context) => ConnectivityService(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet Connectivity Example',
      home: HomeScreen(),
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
