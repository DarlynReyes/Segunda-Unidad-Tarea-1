import 'package:flutter/material.dart';

class iconosNuevos extends StatelessWidget {
  final String texto;
  final IconData icono;

  const iconosNuevos({
    super.key,
    required this.texto,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Icon(icono, size: 36, color: Colors.blueGrey),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              texto,
              style:  TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
