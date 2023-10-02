import 'package:flutter/material.dart';
import 'package:stock/model/grid_news.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: GridNews(),
    );
  }
}
