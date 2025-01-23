import 'package:broadcast/call_page.dart';
import 'package:broadcast/random_user.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final liveID = TextEditingController();
  final userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: userName,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'User Name...',
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallPage(
                      userName: userName.text.trim(),
                      isHost: true,
                      userID: RandomUser.generateID(), // Example usage
                    ),
                  ),
                );
              },
              child: const Text("Start a broadcast"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallPage(
                      userName: userName.text.trim(),
                      isHost: false,
                      userID: RandomUser.generateID(), // Example usage
                    ),
                  ),
                );
              },
              child: const Text("Watch Broadcast"),
            )
          ],
        ),
      ),
    );
  }
}
