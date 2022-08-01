import 'package:flutter/material.dart';

import '../input_field.dart';

class TowInputFields extends StatelessWidget {
  const TowInputFields(
      {Key? key,
      required this.hintFormInput1,
      required this.hintFormInput2,
      required this.onTapFormInput1,
      required this.onTapFormInput2})
      : super(key: key);
  final String hintFormInput1;
  final String hintFormInput2;
  final VoidCallback onTapFormInput1;
  final VoidCallback onTapFormInput2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InputField(
            hint: hintFormInput1,
            textInputType: TextInputType.none,
            widget: IconButton(
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              onPressed: onTapFormInput1,
            ),
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: InputField(
            hint: 'months',
            textInputType: TextInputType.none,
            widget: IconButton(
              icon: const Icon(
                Icons.arrow_drop_down,
              ),
              onPressed: onTapFormInput2,
            ),
          ),
        ),
      ],
    );
  }
}
