import 'package:flutter/material.dart';
import 'package:home_body/features/notification/presentation/views/widgets/notification_list_view_item.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const NotificationListViewItem();
      },
    );
  }
}
