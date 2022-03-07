import 'package:flutter/material.dart';
import '/components/side_menu.dart';
import '/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 3,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 8,
            child: EmailScreen(),
          ),
        ],
      ),
    );
  }
}
