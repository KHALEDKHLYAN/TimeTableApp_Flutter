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
                  onPressed: () {})
          ],
          centerTitle: true,
          // leading: Icon(Icons.lock_clock_rounded),
          title: Text('TimeTable App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              // mainAxisExtent:
            ),
            scrollDirection: Axis.vertical,
            children: [
              Image.network('https://picsum.photos/250?image=1'),
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=3'),
              Image.network('https://picsum.photos/250?image=4'),
              Image.network('https://picsum.photos/250?image=4'),
              Image.network('https://picsum.photos/250?image=4'),
              Image.network('https://picsum.photos/250?image=4'),
              Image.network('https://picsum.photos/250?image=4'),
              Image.network('https://picsum.photos/250?image=1'),
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=3'),
              Image.network('https://picsum.photos/250?image=1'),
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=3'),
              Image.network('https://picsum.photos/250?image=1'),
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=3'),
            ],
          ),
        ),
      ),
    );
  }
}
