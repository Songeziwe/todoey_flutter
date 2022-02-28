import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressCallback,
  }) : super(key: key);

  final bool? isChecked;
  final String? taskTitle;
  final Function? checkboxCallback;
  final Function? longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () => longPressCallback!(),
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Colors.white,
        onChanged: (value) {
          checkboxCallback!(value);
        },
      ),
    );
  }
}
