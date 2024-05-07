import 'package:flutter/material.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {
    var val = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Enable Server',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 45,
                            child: Switch(
                              splashRadius: 2,
                              value: val,
                              onChanged: (val) {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Enable Logging',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 45,
                            child: Switch(
                              splashRadius: 2,
                              value: val,
                              onChanged: (val) {},
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              'Server log',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
                border: Border.all(color: Colors.black),
              ),
              width: 800,
              height: 400,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.copy_outlined),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.clear_all),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                            color: Color.fromARGB(255, 104, 192, 109),
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            enabled: false,
                            border: OutlineInputBorder(),
                          ),
                          maxLines: 13,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
