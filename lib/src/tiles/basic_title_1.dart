import 'package:flutter/material.dart';
import 'package:notify_sync/src/modal/notification_item.dart';

class BasicNotificationTile1 extends StatelessWidget {
  final NotificationItem notification;
  final Key widgetKey;
  final void Function(DismissDirection direction)? onDismissed;

  const BasicNotificationTile1(
      {required this.widgetKey, required this.notification, this.onDismissed})
      : super(key: widgetKey);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: widgetKey,
      direction: DismissDirection.endToStart,
      onDismissed: onDismissed,
      background: Container(
        color: Colors.red,
        child: const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.delete, color: Colors.white),
          ),
        ),
      ),
      child: ListTile(
        title: Text(notification.title),
        subtitle: Text(notification.body),
        trailing: Text(notification.timeDifference),
      ),
    );
  }
}
