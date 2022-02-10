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
          // child: Column(
          //   children: <Widget>[
          //     Expanded(
          //       child: VerticalTabs(
          //         tabsWidth: 150,
          //         tabs: <Tab>[
          //           const Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
          //           const Tab(child: Text('Dart')),
          //           Tab(
          //             child: Container(
          //               margin: const EdgeInsets.only(bottom: 1),
          //               child: Row(
          //                 children: const <Widget>[
          //                   Icon(Icons.favorite),
          //                   SizedBox(width: 25),
          //                   Text('Javascript'),
          //                 ],
          //               ),
          //             ),
          //           ),
          //           const Tab(child: Text('NodeJS')),
          //           const Tab(child: Text('PHP')),
          //           const Tab(child: Text('HTML 5')),
          //           const Tab(child: const Text('CSS 3')),
          //         ],
          //         contents: <Widget>[
          //           tabsContent('Flutter',
          //               'Change page by scrolling content is disabled in settings. Changing contents pages is only available via tapping on tabs'),
          //           tabsContent('Dart'),
          //           tabsContent('Javascript'),
          //           tabsContent('NodeJS'),
          //           Container(
          //               color: Colors.black12,
          //               child: ListView.builder(
          //                   itemCount: 10,
          //                   itemExtent: 100,
          //                   itemBuilder: (context, index) {
          //                     return Container(
          //                       margin: const EdgeInsets.all(10),
          //                       color: Colors.white30,
          //                     );
          //                   })),
          //           tabsContent('HTML 5'),
          //           Container(
          //               color: Colors.black12,
          //               child: ListView.builder(
          //                   scrollDirection: Axis.horizontal,
          //                   itemCount: 10,
          //                   itemExtent: 100,
          //                   itemBuilder: (context, index) {
          //                     return Container(
          //                       margin: const EdgeInsets.all(10),
          //                       color: Colors.white30,
          //                     );
          //                   })),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),

          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                child: VerticalTabs(
                  tabsWidth: 150,
                  direction: TextDirection.ltr,
                  contentScrollAxis: Axis.vertical,
                  changePageDuration: const Duration(milliseconds: 500),
                  tabs: <Tab>[
                    const Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                    const Tab(child: Text('Dart')),
                    Tab(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 1),
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.favorite),
                            SizedBox(width: 25),
                            Text('Javascript'),
                          ],
                        ),
                      ),
                    ),
                    const Tab(child: Text('NodeJS')),
                    const Tab(child: Text('PHP')),
                  ],
                  contents: <Widget>[
                    tabsContent('Flutter', 'You can change page by scrolling content vertically'),
                    tabsContent('Dart'),
                    tabsContent('Javascript'),
                    tabsContent('NodeJS'),
                    Container(
                        color: Colors.black12,
                        child: ListView.builder(
                            itemCount: 10,
                            itemExtent: 100,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(10),
                                color: Colors.white30,
                              );
                            })),
                  ],
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.black87,
              ),
              SizedBox(
                height: 300,
                child: VerticalTabs(
                  tabsWidth: 150,
                  direction: TextDirection.ltr,
                  changePageDuration: const Duration(milliseconds: 500),
                  tabs: <Tab>[
                    const Tab(child: Text('Flutter'), icon: Icon(Icons.phone)),
                    const Tab(child: Text('Dart')),
                    Tab(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 1),
                        child: Row(
                          children: const <Widget>[
                            Icon(Icons.favorite),
                            SizedBox(width: 25),
                            Text('Javascript'),
                          ],
                        ),
                      ),
                    ),
                    const Tab(child: Text('NodeJS')),
                    const Tab(child: Text('PHP')),
                  ],
                  contents: <Widget>[
                    tabsContent('Flutter', 'You can change page by scrolling content horizontally'),
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
                                color: Colors.white30,
                              );
                            })),
                  ],
                ),
              ),
            ],
          ),
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
            style: const TextStyle(fontSize: 25),
          ),
          const Divider(
            height: 20,
            color: Colors.black45,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 15, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
