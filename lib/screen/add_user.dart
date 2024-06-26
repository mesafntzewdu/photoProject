import 'package:flutter/material.dart';
import 'package:photo/component/text_field.dart';
import 'package:photo/utils/file_picker.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 600,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFields(
                      readOnly: false,
                      maxLength: 30,
                      hintText: 'Client name',
                      onTap: () {},
                      icon: Icons.person,
                      cursorStyle: SystemMouseCursors.alias,
                    ),
                    TextFields(
                      readOnly: true,
                      hintText: 'Image folder',
                      onTap: () {},
                      icon: Icons.folder,
                      cursorStyle: SystemMouseCursors.click,
                    ),
                    TextFields(
                      readOnly: true,
                      hintText: 'Profile image',
                      onTap: () {},
                      icon: Icons.image,
                      cursorStyle: SystemMouseCursors.click,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 4),
                      child: OutlinedButton.icon(
                        onPressed: () {
                          FilePickers().filePicker();
                        },
                        icon: const Icon(Icons.add),
                        label: Text(
                          'Add Client',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
