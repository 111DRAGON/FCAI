import 'package:fcai/constants.dart';
import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    super.key,
    required this.changeToArabicLanguage,
    required this.changeToEnglishLanguage,
    required this.complaints,
    required this.logOut,
    required this.accountEmail,
    required this.accountName,
  });

  final Function() changeToEnglishLanguage;
  final Function() changeToArabicLanguage;
  final Function() complaints;
  final Function() logOut;
  final String accountName;
  final String accountEmail;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: kButtonColor,
            ),
            currentAccountPicture: Image.asset(
              'image/graduated.png',
              height: 300,
              color: Colors.white,
            ),
            accountName: Text(accountName),
            accountEmail: Text(accountEmail),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 40,
            child: TextButton.icon(
              onPressed: changeToEnglishLanguage,
              label: const Text(
                "change to english language",
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 40,
            child: TextButton.icon(
              onPressed: changeToArabicLanguage,
              label: const Text(
                "للتحويل للغه العربيه",
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.language_sharp,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 40,
            child: TextButton.icon(
              onPressed: complaints,
              label: const Text(
                'Complaints',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.file_copy,
                color: Color(0xfffdfeff),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: 40,
            child: TextButton.icon(
              onPressed: logOut,
              label: const Text(
                'log out',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.logout,
                color: Color(0xfff3f4f5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
