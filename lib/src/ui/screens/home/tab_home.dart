
import 'package:app_ui_01/cores/json.dart';
import 'package:app_ui_01/src/models/product.dart';
import 'package:app_ui_01/src/ui/screens/home/home_wiget.dart';
import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> with HomeWidget {
  List<Product> products = [];

    void initState() {
    // TODO: implement initState
    super.initState();
    this.getDataFromJson();
  }

   getDataFromJson() async {
    var jsons = await loadJson('assets/data/products.json');
    // products = jsons.map((e) => Product.fromJson(e)).toList();
    for (var json in jsons) {
      products.add(Product.fromJson(json));
    }
    setState(() {
      products = products;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: products.length,
      itemBuilder: (_, index) => buildItem(context, products.elementAt(index)),
      // children: [
      //   buildItem(context),
      //   buildItem(context),
      // ],
    );
  }

}