import 'dart:io';

import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Access code',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.green,
                        ),
                  ),
                ),
                const Spacer(),
                PopupMenuButton(
                  onSelected: (value) {
                    print(value);
                  },
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Delete'),
                        ],
                      ),
                    ),
                    // const PopupMenuItem(
                    //   value: 'suspend',
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.pause,
                    //         color: Colors.yellowAccent,
                    //         size: 20,
                    //       ),
                    //       SizedBox(
                    //         width: 5,
                    //       ),
                    //       Text('Suspend'),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(
                  File('C:/Users/M/Downloads/Telegram Desktop/mesi.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Client name',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.green,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
