import 'package:app_ui_01/src/models/product.dart';
import 'package:flutter/material.dart';
import 'detail2.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${widget.product.name}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back')),
            Text(widget.product != null ? widget.product.name : 'Hanaa'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Detail2()),
                  );
                },
                child: Text('Go to '))
          ],
        ),
      ),
    );
  }
}
