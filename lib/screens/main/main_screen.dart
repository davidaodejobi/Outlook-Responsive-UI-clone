import 'package:flutter/material.dart';
import 'package:responsive_ui_design/responsive.dart';
import '/components/side_menu.dart';
import '/screens/email/email_screen.dart';
import 'components/list_of_emails.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
      mobile: Container(
        color: Colors.teal,
      ),
      tablet: Row(
        children: const [
          Expanded(
            flex: 6,
            child: ListOfEmails(),
          ),
          Expanded(
            flex: 9,
            child: EmailScreen(),
          ),
        ],
      ),
      desktop: Row(
        children: [
          Expanded(
            flex: _size.width > 13400 ? 2 : 4,
            child: const SideMenu(),
          ),
          Expanded(
            flex: _size.width > 13400 ? 3 : 5,
            child: const ListOfEmails(),
          ),
          Expanded(
            flex: _size.width > 13400 ? 8 : 10,
            child: const EmailScreen(),
          ),
        ],
      ),
    ));
  }
}
