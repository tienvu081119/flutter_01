
import 'package:app_ui_01/src/ui/screens/home/home_wiget.dart';
import 'package:flutter/material.dart';


class TabCart extends StatelessWidget with HomeWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => buildCartItem(),
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) => Divider(),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text('Total'), Text('199 \$ ')],
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        Text("Thanh toán"),
                        Container(
                          decoration: BoxDecoration(color: Colors.green),
                          child: Icon(Icons.arrow_right),
                        )
                      ],
                    ),
                    onTap: () {},
                  )
                ]),
          )
        ],
      ),
    );
  }
}
