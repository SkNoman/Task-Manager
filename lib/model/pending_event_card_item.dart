class PendingEventCardItem {
  final String urlTaskAssignee;
  final String taskTitle;
  final String taskCreatedTime;
  final String taskPrioity;
  final String taskComments;

  const PendingEventCardItem(
      {required this.urlTaskAssignee,
      required this.taskTitle,
      required this.taskCreatedTime,
      required this.taskPrioity,
      required this.taskComments});
}
