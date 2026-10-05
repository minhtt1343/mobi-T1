import 'package:flutter/material.dart';
import '../widgets/icon_square_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const String name = 'Trần Thanh Minh';
  static const String studentId = '080206001343'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFB),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconSquareButton(
                    icon: Icons.arrow_back,
                    onTap: () => Navigator.maybePop(context),
                  ),
                  const IconSquareButton(
                    icon: Icons.edit_note,
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/m.png'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(studentId, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}