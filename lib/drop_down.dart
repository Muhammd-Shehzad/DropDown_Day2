import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> _dropDownButton = [
    'Red',
    'blue',
    'Green',
    'Yellow',
    'Grey',
    'Purple'
  ];

  String _selectedItems = 'Red';

  String _textFieldItem = 'one';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: DropdownButtonFormField(
                    value: _selectedItems,
                    items: _dropDownButton.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _textFieldItem = value!;
                      });
                    }),
              ),
              DropdownButton(
                value: _selectedItems,
                items: _dropDownButton.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedItems = value!;
                  });
                },
                icon: Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
