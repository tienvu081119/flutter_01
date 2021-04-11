import 'package:flutter/material.dart';

class TabAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '''
          Account Account Account Account Account AccountAccount Account
           Account Account Account Account
           ''',
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    );
  }
}
