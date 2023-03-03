// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'conference_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final conferenceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: conferenceController,
              decoration: InputDecoration(
                  hintText: 'Conference ID', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (builder) => ConferencePage(
                          conferenceId:
                              "User Conference ID ${conferenceController.text}",
                        )));
              },
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text("ENTER"),
            )
          ],
        ),
      ),
    );
  }
}
