import 'package:flutter/material.dart';

class ListItemBuilder {
  static Widget buildListItem(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
      onTap: onTap,
    );
  }
}
