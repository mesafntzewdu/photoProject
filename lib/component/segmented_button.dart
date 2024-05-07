import 'package:flutter/material.dart';

class SegmentedButtons extends StatefulWidget {
  SegmentedButtons({super.key, required this.getScreen});
  Function(String num) getScreen;
  @override
  State<SegmentedButtons> createState() => _SegmentedButtonsState();
}

class _SegmentedButtonsState extends State<SegmentedButtons> {
  var _default = '1';
  @override
  Widget build(BuildContext context) {
    return  SegmentedButton(
      segments: const <ButtonSegment<String>>[
        ButtonSegment(
          value: '1',
          label: Text('Add User'),
          icon: Icon(Icons.add),
        ),
        ButtonSegment(
          value: '2',
          label: Text('Users'),
          icon: Icon(Icons.person),
        ),
        ButtonSegment(
          value: '3',
          label: Text('Manage'),
          icon: Icon(Icons.settings),
        ),
      ],
      selected: <String>{_default},
      onSelectionChanged: (selected) {
        setState(
          () {
            _default = selected.first;
            widget.getScreen(selected.first);
          },
        );
      },
    );
  }
}
