import 'package:flutter/material.dart';
import '../themes/colors.dart';

class MessageField extends StatelessWidget {
  final String prompt;
  final TextEditingController? controller;
  final Function()? onSubmitted;
  const MessageField(
      {super.key,
      required this.controller,
      required this.onSubmitted,
      required this.prompt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        controller: controller,
        minLines: 1,
        maxLines: 200,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          filled: true,
          fillColor: white100,
          hintText: prompt,
          hintStyle: const TextStyle(fontSize: 20),
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              gapPadding: 30,
              borderRadius: BorderRadius.all(Radius.circular(50))),
          suffixIcon: IconButton(
            onPressed: onSubmitted,
            icon: const Icon(Icons.send_rounded),
          ),
        ),
      ),
    );
  }
}
