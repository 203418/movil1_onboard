import 'package:flutter/material.dart';

class ExpandedNameLastName extends StatelessWidget {
  const ExpandedNameLastName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
          ),
          SizedBox(width: 8.0,),
          Expanded(
            child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 hintText: 'Last name',
               ),
            ),
          ),
        ],
      ),
    );
  }
}