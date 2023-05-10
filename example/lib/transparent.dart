import 'package:flutter/material.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                      "This example shows difference of VerticalTabs widget rendering with transparent background of bar tabs, when materialType is set to transparent and to canvas (default) values.")),
              const Divider(
                height: 20,
                color: Colors.black87,
              ),
              const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                      "This widget has Material.type set to MaterialType.canvas, as it is set by default")),
              exampleWidget(MaterialType.canvas),
              const Divider(
                height: 20,
                color: Colors.black87,
              ),
              const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                      "This widget has Material.type set to MaterialType.transparent as it is recommended to configure for a transparent piece of material")),
              exampleWidget(MaterialType.transparency),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox exampleWidget(MaterialType materialType) {
    final tabTextStyle =
        TextStyle(color: Colors.blue.withOpacity(0.7), fontSize: 20);
    return SizedBox(
      height: 300,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        //child: const Text("test"),
        child: VerticalTabs(
          tabsWidth: 150,
          direction: TextDirection.ltr,
          changePageDuration: const Duration(milliseconds: 500),
          backgroundColor: Colors.transparent,
          selectedTabBackgroundColor: Colors.white.withOpacity(0.5),
          tabBackgroundColor: Colors.transparent,
          materialType: materialType,
          tabs: <Tab>[
            Tab(
                child: Text('Flutter', style: tabTextStyle),
                icon: const Icon(Icons.phone, color: Colors.white)),
            tabTitle('Dart'),
            Tab(
              child: Container(
                color: Colors.green.withOpacity(0.3),
                margin: const EdgeInsets.only(bottom: 1),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.favorite, color: Colors.blue.withOpacity(0.3)),
                    const SizedBox(width: 25),
                    Text('JS', style: tabTextStyle),
                  ],
                ),
              ),
            ),
            tabTitle('NodeJS'),
            tabTitle('PHP'),
          ],
          contents: <Widget>[
            tabsContent('Flutter',
                'You can change page by scrolling content horizontally'),
            tabsContent('Dart'),
            tabsContent('Javascript'),
            tabsContent('NodeJS'),
            Container(
                color: Colors.black12,
                child: ListView.builder(
                    itemCount: 10,
                    itemExtent: 100,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.white.withOpacity(0.4),
                      );
                    })),
          ],
        ),
      ),
    );
  }

  Widget tabsContent(String caption, [String description = '']) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          Text(
            caption,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
          const Divider(
            height: 20,
            color: Colors.white,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Tab tabTitle(String title) {
    final tabTextStyle =
        TextStyle(color: Colors.blue.withOpacity(0.7), fontSize: 20);
    return Tab(
      child: Text(title, style: tabTextStyle),
    );
  }
}
