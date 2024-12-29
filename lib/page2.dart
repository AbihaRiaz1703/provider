import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/count_provider.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Consumer<CountProvider>(builder: (context, proname, child) {
        return ListView(
          children: [
            Center(
              child: Text('${proname}'),
            ),
            FloatingActionButton(
              onPressed: () {
                proname.increase();
              },
              child: Text('Increase'),
            )
          ],
        );
      }),
    );
  }
}
