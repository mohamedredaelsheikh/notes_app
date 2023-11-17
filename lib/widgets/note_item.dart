import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Fulter tips",
              style: TextStyle(color: Colors.black),
            ),
            subtitle: const Text(
              "Build your carer with mohamed esheikh",
              style: TextStyle(color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
              ),
            ),
          ),
          const Text(
            "21 May , 2024 ",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
