import 'package:flutter/material.dart';
import 'package:task_manager/model/pending_event_card_item.dart';

class PendingEventList extends StatefulWidget {
  const PendingEventList({super.key});

  @override
  State<PendingEventList> createState() => _PendingEventListState();
}

class _PendingEventListState extends State<PendingEventList> {
  List<PendingEventCardItem> task = [
    const PendingEventCardItem(
        urlTaskAssignee: 'assets/images/p1.png',
        taskTitle: 'Task ABCD EFGH',
        taskCreatedTime: '10.30 AM',
        taskPrioity: 'High Priority',
        taskComments: '2 comments'),
    const PendingEventCardItem(
        urlTaskAssignee: 'assets/images/p2.png',
        taskTitle: 'Home Painting',
        taskCreatedTime: '11.20 PM',
        taskPrioity: 'Medium Priority',
        taskComments: '1 comments'),
    const PendingEventCardItem(
        urlTaskAssignee: 'assets/images/p3.png',
        taskTitle: 'Crafting Hall Room',
        taskCreatedTime: '10.30 AM',
        taskPrioity: 'Low Priority',
        taskComments: '3 comments'),
    const PendingEventCardItem(
        urlTaskAssignee: 'assets/images/task_icon.png',
        taskTitle: 'Create Task Management App',
        taskCreatedTime: '07.00 PM',
        taskPrioity: 'High Priority',
        taskComments: '4 comments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 8, 10, 0),
      height: 112,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: task.length,
        separatorBuilder: (context, _) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => buildCard(item: task[index]),
      ),
    );
  }
}

Widget buildCard({
  required PendingEventCardItem item,
}) =>
    Container(
      width: 300,
      height: 112,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      //margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.fromLTRB(5, 0, 10, 10),
            height: 60,
            width: 60,
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  item.urlTaskAssignee,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TASK TITLE
                Text(
                  item.taskTitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    //TASK CREATED AT TIME
                    Text(
                      item.taskCreatedTime,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    //TASK PRIORITY
                    Text(
                      item.taskPrioity,
                      style: TextStyle(
                        fontSize: 10,
                        color: item.taskPrioity == 'High Priority'
                            ? const Color.fromRGBO(232, 45, 90, 1)
                            : item.taskPrioity == 'Medium Priority'
                                ? Colors.blue.shade500
                                : item.taskPrioity == 'Low Priority'
                                    ? Colors.grey.shade700
                                    : Colors.black,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/comments_icon.png',
                      fit: BoxFit.cover,
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    //COMMENTS COUNT TEXT
                    Text(
                      item.taskComments,
                      style: const TextStyle(
                          fontSize: 10, color: Color.fromRGBO(80, 139, 255, 1)),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
