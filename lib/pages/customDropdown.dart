import 'package:flutter/material.dart';

class dropDown_page extends StatelessWidget {
  late List<String> list;
  late double width;

  dropDown_page({required this.list, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .10),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(53, 53, 53, 1.0),
      ),
      child: DropdownButton(
        items: list
            .map(
              (String element) => DropdownMenuItem(
                child: Text(
                  element,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                value: element,
              ),
            )
            .toList(),
        onChanged: (_) {},
        value: list.first,
        hint: Text(
          "Hello MoTo",
        ),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
      ),
    );
  }
}
