import 'package:flutter/material.dart';
import 'package:mobile/extends/curve_notched_rectangle.dart';
import 'package:mobile/utils/constants.dart';
import 'package:mobile/utils/routes.dart';
import 'package:mobile/widgets/bottom_navbar/fab_icon.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentURl = ModalRoute.of(context)!.settings.name.toString();

    return BottomAppBar(
      shape: CurveNotchedRectangle(),
      color: const Color(navBottomBackground),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FABIcon(
            icon: const Icon(Icons.home_outlined),
            onPressed: () {
              if(currentURl != URL_HOME){
                Navigator.pushNamed(context, URL_HOME);
              }
            },
            active: currentURl == URL_HOME,
          ),
          FABIcon(
            icon: const Icon(Icons.calendar_today_outlined),
            onPressed: () {
              if(currentURl != URL_EVENTS){
                Navigator.pushNamed(context, URL_EVENTS);
              }
            },
            active: currentURl == URL_EVENTS,
          ),
          SizedBox(width: 30),
          FABIcon(
            icon: const Icon(Icons.share_outlined),
            onPressed: () {
              if(currentURl != URL_CONTACTS){
                Navigator.pushNamed(context, URL_CONTACTS);
              }
            },
            active: currentURl == URL_CONTACTS,
          ),
          FABIcon(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              if(currentURl != URL_SETTINGS){
                Navigator.pushNamed(context, URL_SETTINGS);
              }
            },
            active: currentURl == URL_SETTINGS,
          ),
        ],
      ),
    );
  }
}
