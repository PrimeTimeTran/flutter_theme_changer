import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('You selected: $value')),
        );
      },
      itemBuilder: (BuildContext context) {
        return [
          const PopupMenuItem<String>(
            value: 'Item 1',
            child: Row(
              children: [
                Icon(Icons.access_alarm),
                SizedBox(width: 8),
                Text('Item 1'),
              ],
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Item 2',
            child: Row(
              children: [
                Icon(Icons.account_circle),
                SizedBox(width: 8),
                Text('Item 2'),
              ],
            ),
          ),
          const PopupMenuItem<String>(
            value: 'Item 3',
            child: Row(
              children: [
                Icon(Icons.ac_unit),
                SizedBox(width: 8),
                Text('Item 3'),
              ],
            ),
          ),
        ];
      },
      child: const Icon(Icons.menu), // Icon that opens the menu
    );
  }
}
