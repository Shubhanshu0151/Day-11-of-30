import 'package:day_11/models/catlog.dart';
import 'package:day_11/widgets/Item_widgets.dart';
import 'package:day_11/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int day = 8;

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (Item) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catlog App"),
        backgroundColor: Color.fromARGB(255, 11, 118, 218),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
      // drawer: (),
    );
  }
}
