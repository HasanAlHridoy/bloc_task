import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/models/task.dart';

class Tasks extends StatelessWidget {
  const Tasks({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          var task = taskList[index];
          return ListTile(
            title: Text(task.title),
            trailing: Checkbox(
              onChanged: (value) {},
              value: task.isDone,
            ),
          );
        },
      ),
    );
  }
}
