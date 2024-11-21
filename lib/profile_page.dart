import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> activities = List.generate(
    20,
    (index) => 'Aktivitas ${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.check_circle, color: Colors.blue),
          title: Text(activities[index]),
        );
      },
    );
  }
}
