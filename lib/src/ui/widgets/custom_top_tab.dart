import 'package:flutter/material.dart';

class CustomTopTab extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [buildItem(), buildItem()],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);

  Widget buildItem() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dòng 1',
            style: TextStyle(color: Colors.black),
          ),
          Container(
            width: 30,
            height: 2,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}