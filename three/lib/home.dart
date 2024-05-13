import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> tabItems = const [
    '最新',
    'UI/UX',
    '平面',
    '插画/漫画',
    '摄影',
    '3D',
    '工业设计',
    '建筑设计',
    '艺术',
    '其他'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.center_focus_strong),
            label: '关注',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration_outlined),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '发布',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '搜索',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: tabItems.length,
                    child: TabBar(
                      dividerHeight: 0,
                      tabAlignment: TabAlignment.start,
                      padding: const EdgeInsets.all(0),
                      isScrollable: true,
                      tabs: tabItems.map((e) => Tab(text: e)).toList(),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Icon(
                    Icons.filter_alt_outlined,
                  ),
                ),
              ],
            ),
            Expanded(
              child: WaterfallFlow.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 20,
                gridDelegate:
                    const SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CardItem(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Image(
              image: ResizeImage(
                AssetImage('assets/${index + 1}.jpg'),
                width: constraints.maxWidth.toInt(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Card ${index + 1}'),
          ),
        ],
      ),
    );
  }
}
