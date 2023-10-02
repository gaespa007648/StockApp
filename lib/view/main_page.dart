import 'package:flutter/material.dart';
import 'package:stock/view/news_page.dart';
import 'package:stock/view/account_page.dart';
import 'package:stock/view/chart_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.account_circle)),
                Tab(icon: Icon(Icons.document_scanner_rounded)),
                Tab(icon: Icon(Icons.insert_chart)),
              ],
            ),
            title: Text(title),
          ),
          body: const TabBarView(
            children: [
              AccountPage(),
              NewsPage(),
              ChartPage(),
            ],
          ),
        ),
      ),
    );
  }
}