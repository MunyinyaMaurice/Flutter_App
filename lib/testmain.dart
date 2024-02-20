import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ThemeProvider.dart'; // Import the ThemeProvider class
import 'package:calculatorvtwo_app/AboutView.dart'; // Import your Calculator class
import 'package:calculatorvtwo_app/AboutView.dart'; // Import your AboutScreen class

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Navigator',
          theme: themeProvider.themeData,
          home: const HomeScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maurice DevOps Platform!'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Container(
        // ... (unchanged)
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                // ... (unchanged)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome To DevOps Platform!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'All you need to Calculate is Here!!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Scaffold(
            // ... (unchanged)
          ),
        ],
      ),
    );
  }
}
