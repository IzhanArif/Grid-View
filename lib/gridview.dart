import 'package:flutter/material.dart';

class GridViewww extends StatefulWidget {
  const GridViewww({Key? key}) : super(key: key);

  @override
  State<GridViewww> createState() => _GridViewwwState();
}

class _GridViewwwState extends State<GridViewww> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GRID VIEW"),
        ),
        body: GridView.builder(
            itemCount: 50,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) => Container(
                  color: Colors.cyan,
                  child: Center(child: Text("$index")),
                )));
  }
}
