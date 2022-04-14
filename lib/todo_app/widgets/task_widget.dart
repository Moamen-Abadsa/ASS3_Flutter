import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  late Function delete;
  Task task;
  TaskWidget(this.task, this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        secondary: IconButton(
          onPressed: () {
            int index = tasksList.indexOf(task);
            tasksList.removeAt(index);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}
