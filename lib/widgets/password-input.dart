import 'package:flutter/material.dart';
import 'package:frontend/pallete.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key, 
    @required this.icon, 
    @required this.hint, 
    this.Inputtype, 
    this.inputAction,
  }) : super(key: key);
  final IconData icon;
  final String hint;
  final TextInputType Inputtype;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height*0.08,
        width: size.width*0.8,
        decoration: BoxDecoration(
          color: Colors.grey[500].withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric
                  (horizontal: 20.0),
                  child: Icon(
                    icon,
                    size: 28,
                    color: kWhite,
                  ),
                ),   
                hintText: hint,
                hintStyle: kobodyText,
              ),
              obscureText: true,
              style: kobodyText,
              keyboardType: Inputtype,
              textInputAction: inputAction,
            ),
          ),
      ),
    );
  }
}
