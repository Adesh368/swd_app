import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {this.obscureText = false,
      this.textCapitalization = TextCapitalization.none,
      required this.hintText,
      required this.onSaved,
      required this.validator,
      required this.text,
      this.icons,
      this.textinput = TextInputType.text,
      super.key});
  final bool obscureText;
  final String hintText;
  final String text;
  final IconButton? icons;
  final TextInputType textinput;
  final TextCapitalization textCapitalization;
  final FormFieldSetter<String>? onSaved;  
  final FormFieldValidator<String> validator; 
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8), 
        TextFormField(
          keyboardType: textinput,
          obscureText: obscureText,
          style: const TextStyle(color: Colors.white),
          //autocorrect: false,
          //textCapitalization: textCapitalization,
          onSaved: onSaved,
          validator: validator,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(15),
            hintText: hintText,
            hintStyle: const TextStyle(color: Color(0xffA4A4A4)),
            suffixIcon: icons,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(14),
              ),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
