import 'package:flutter/material.dart';
import 'package:project/tabs/home/pages/room/room.dart';

class GH011 extends StatelessWidget {
  final BuildContext _buildContext;
  final Function updatePage;

  const GH011(this._buildContext, this.updatePage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      title: const Text(
          'GH011',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
              color: Colors.black
          )
      ),
      onTap: () {
        updatePage(const Room('the_great_hall', 'gh011'));
        Navigator.of(_buildContext).pop();
      },
    );
  }
}