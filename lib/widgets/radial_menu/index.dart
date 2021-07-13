import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class MenuSegment {
  final Widget icon;
  final String title;
  final Color color;

  const MenuSegment(
      {Key? key, required this.title, required this.color, required this.icon});
}

const List<MenuSegment> menuItems = [
  const MenuSegment(
      title: 'Menu',
      icon: const Icon(Icons.menu),
      color: const Color(0xff36b0a0)),
  const MenuSegment(
      title: 'Add',
      icon: const Icon(Icons.add),
      color: const Color(0xffa4a7e2)),
  const MenuSegment(
      title: 'remove',
      icon: const Icon(Icons.remove),
      color: const Color(0xff3a51a4)),
  const MenuSegment(
      title: 'camera',
      icon: const Icon(Icons.camera_enhance_outlined),
      color: const Color(0xffb174ca)),
  const MenuSegment(
      title: 'settings',
      icon: const Icon(Icons.settings),
      color: const Color(0xffc2637a)),
  const MenuSegment(
      title: 'headset',
      icon: const Icon(Icons.headset),
      color: const Color(0xffec9644)),
];

class RadialMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RadialMenuState();
}

class RadialMenuState extends State {
  int touchedIndex = -1;
  double size = 80.0;
  String _selected = '';

  selectMenuItem(String itemName) {
    setState(() {
      _selected = itemName;
    });
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      width: 400.0,
      child: Stack(
        children: [
          genMenuItem(),
          Positioned(
            child: genCircleCenter(),
            top: 104.0,
            left: 150.0,
          ),
        ],
      ),
    );
  }

  Widget genCircleCenter() {
    return SizedBox(
      height: 100.0,
      width: 100.0,
      child: FloatingActionButton(
        onPressed: () => print('go to screen $_selected'),
        child: Text(
          _selected.isEmpty ? 'Select' : _selected,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget genMenuItem() {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                    pieTouchData:
                    PieTouchData(touchCallback: (pieTouchResponse) {
                      setState(() {
                        final desiredTouch = pieTouchResponse.touchInput
                        is! PointerExitEvent &&
                            pieTouchResponse.touchInput is! PointerUpEvent;
                        if (desiredTouch &&
                            pieTouchResponse.touchedSection != null) {
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        } else {
                          touchedIndex = -1;
                        }
                      });
                    }),
                    sectionsSpace: 4,
                    centerSpaceRadius: 50,
                    sections: showingSections()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    List<PieChartSectionData> pieList = [];
    for (var i = 0; i < menuItems.length; i++) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      final TextStyle style = TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff));

      pieList.add(PieChartSectionData(
          color: menuItems[i].color,
          title: menuItems[i].title,
          showTitle: false,
          radius: radius,
          titleStyle: style,
          badgeWidget: IconButton(
            icon: menuItems[i].icon,
            onPressed: () => selectMenuItem(menuItems[i].title),
            color: Colors.white,
            iconSize: 30,
          )));
    }

    return pieList.toList();
  }
}
