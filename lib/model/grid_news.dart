import 'package:flutter/material.dart';

/*
  Description: The gird

*/
const int rowCount = 2;

class GridNews extends StatefulWidget {
  const GridNews({super.key});

  @override
  State<StatefulWidget> createState() {
    return _GridNewsState();
  }
}

class _GridNewsState extends State<GridNews> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 16,
      crossAxisCount: rowCount,
      children: [
        ...List.generate(
          20,
          (index) {
            return Center(
              child: Text('item$index'),
            );
          },
        )
      ],
    );
  }
}
