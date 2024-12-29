import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/count_provider.dart';
import 'package:providers/page2.dart';

class pageOne extends StatefulWidget {
  const pageOne({super.key});

  @override
  State<pageOne> createState() => _pageOneState();
}

class _pageOneState extends State<pageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: Consumer<CountProvider>(
        builder: (context, proname, child) {
          return Column(
            children: [
              Text(
                '${proname.count}',
                style: TextStyle(fontSize: 30),
              ),
              Padding(
                  padding: EdgeInsets.all(60),
                  child: ElevatedButton(
                    onPressed: () {
                      proname.increase();
                    },
                    child: Text('increase'),
                  ))
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Page2()));
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
