import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.controller,
    required this.validatorTxt,
    required this.hint,
    required this.icons,
  }) : super(key: key);

  final TextEditingController controller;
  final String validatorTxt;
  final String hint;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        cursorColor: AppColor.primaryColor,
        validator: (value) => value!.isEmpty ? validatorTxt : null,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icons,
            color: AppColor.hintText.withOpacity(.4),
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppColor.hintText.withOpacity(.4),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(width: 1, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(width: 1, color: Colors.red),
          ),
          fillColor: AppColor.lightGrey,
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.lightGrey),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 1, color: AppColor.lightGrey),
          ),
        ),
        onFieldSubmitted: (value) {
          //add code
        },
      ),
    );
  }
}
