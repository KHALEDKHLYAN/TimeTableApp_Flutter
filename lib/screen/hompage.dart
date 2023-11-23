import 'package:flutter/material.dart';
import 'package:timetable_app/models/safeare.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            for (var icon in [Icons.comment, Icons.settings])
              IconButton(
                icon: Icon(icon),
                tooltip: '${icon.toString().split('.').last} Icon',
                onPressed: () 
                  {}
                
              )
        ],
          centerTitle: true,
          // leading: Icon(Icons.lock_clock_rounded),
          title: Text('TimeTable App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Click Me!'),
            onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => safeAreaBuilder(context)),
              );
            },),
      ),
        ),
      );
  }
}


