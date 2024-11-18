import 'package:flutter/material.dart';

class ToDoItem extends StatefulWidget {
  final String title;
  final VoidCallback onDelete;
  const ToDoItem({super.key, required this.title, required this.onDelete});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          isClicked ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
      ),
      title: Text(widget.title),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.grey,
        ),
        onPressed: widget.onDelete,
      ),
    );
  }
}
