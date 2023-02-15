import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({ Key? key, required this.icon }) : super(key: key);

  final Widget icon;

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        shape: BoxShape.circle
      ),
      child: IconButton(
        onPressed: (){},
        icon: icon, 
        splashRadius: 2,
        color: Colors.black54,
        constraints: const BoxConstraints.tightFor(width: 40),
      )
    );
  }
}