import 'package:flutter/material.dart';
import 'package:poc_autoroute/widget/menu_bottom.dart';

class MenuWidget extends StatelessWidget {
  final ItemMenu itemMenu;

  const MenuWidget({Key? key, required this.itemMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 80,
      padding: const EdgeInsets.only(top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!(itemMenu.id == MenuBottom.ALLO)) Container(
            height: 24, width: 24,
            child: Icon(Icons.add),
          ),
          if ((itemMenu.id == MenuBottom.ALLO)) Align(
            child: Container(
              child: Icon(Icons.router)),
            ),
          if (!(itemMenu.id == MenuBottom.ALLO))
            SizedBox(
              height: 12,
            ),
          Text('data',
            style: TextStyle(
                color: itemMenu.isActive == true ? Colors.black87 : Colors.amberAccent,
                fontWeight: FontWeight.normal,
                fontSize: 10),
          )
        ],
      ),
    );
  }
}
