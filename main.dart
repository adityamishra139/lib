import 'package:bloodbond/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BloodBond"),
        centerTitle: true,
        
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){
            
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person), // Add your action icon here
            onPressed: () {
              // Do something when the action icon is pressed
            },
          ),
          
        ],
        
      ),
      body: const Homepage(),
      
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.person), label: "person"),
          NavigationDestination(icon: Icon(Icons.graphic_eq), label: "stats")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
