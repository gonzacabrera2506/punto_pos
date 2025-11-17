import 'package:flutter/material.dart';

enum Menu { preview, share, getLink, remove, download }

class CustomPopupmenu extends StatelessWidget {
  const CustomPopupmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Menu>(
      icon: const Icon(Icons.more_vert),
      onSelected: (Menu item) {},
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry<Menu>>[
            const PopupMenuItem<Menu>(
              value: Menu.preview,
              child: ListTile(
                leading: Icon(Icons.visibility_outlined),
                title: Text('Preview'),
              ),
            ),
            const PopupMenuItem<Menu>(
              value: Menu.share,
              child: ListTile(
                leading: Icon(Icons.share_outlined),
                title: Text('Share'),
              ),
            ),
            const PopupMenuItem<Menu>(
              value: Menu.getLink,
              child: ListTile(
                leading: Icon(Icons.link_outlined),
                title: Text('Get link'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem<Menu>(
              value: Menu.remove,
              child: ListTile(
                leading: Icon(Icons.delete_outline),
                title: Text('Remove'),
              ),
            ),
            const PopupMenuItem<Menu>(
              value: Menu.download,
              child: ListTile(
                leading: Icon(Icons.download_outlined),
                title: Text('Download'),
              ),
            ),
          ],
    );
  }
}
