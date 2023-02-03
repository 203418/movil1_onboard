import 'package:flutter/material.dart';

class ExpandedAgeGender extends StatelessWidget {
  const ExpandedAgeGender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 hintText: 'Age',
               ),
            ),
          ),
          const SizedBox(width: 8.0,),
          Expanded(
            child: DropdownButtonFormField<String>(
              value: "Gender",
              items: ["Gender","Male", "Female"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) => {
                if(value != "Male" && value!="Female"){
                  print("Select a correct option")
                }
              },
            )
          ),
          
        ],
      ),
    );
  }
}