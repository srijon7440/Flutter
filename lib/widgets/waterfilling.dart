import 'package:flutter/material.dart';
class waterFilling extends StatelessWidget {
  final int amount;
  IconData ? icon;
  final VoidCallback onClick;
   waterFilling({
    required this.amount,
    this.icon,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:Padding(
        padding: const EdgeInsets.all(15),

        child: ElevatedButton.icon(onPressed: onClick,
          icon:Icon(icon ?? Icons.water_drop),
          label: Text('$amount LTR'),
        ),
      ),
    );
  }
}
