import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class DetailPage extends StatelessWidget {
  final String title;
  final String snippet;

  const DetailPage({Key? key, required this.title, required this.snippet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 24.0)),
            SizedBox(height: 8.0),
            Text(snippet, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
