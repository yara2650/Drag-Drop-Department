import 'package:flutter/material.dart';

class PopupWindow extends StatelessWidget {
  const PopupWindow({
    super.key,
    required this.title,
    required this.content,
    this.ok,
    this.cancel,
    required this.type,
  });
  final String title, content, type;
  final VoidCallback? ok, cancel;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Colors.white,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25, color: type == 's' ? Colors.green : Colors.red),
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 25, color: Colors.black),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ok,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9180C4),
              ),
              child: const Text(
                'حسنا',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            cancel != null
                ? ElevatedButton(
                    onPressed: cancel,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  )
                : const SizedBox(),
          ],
        )
      ],
    );
  }
}
