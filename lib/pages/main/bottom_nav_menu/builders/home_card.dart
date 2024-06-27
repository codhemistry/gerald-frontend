import 'package:flutter/material.dart';
import 'package:gerald_app/core/global_components/global_text.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String symbols;
  final IconData icon;
  final String number;
  final String description;

  const HomeCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.number,
    required this.symbols,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 160,
          height: 129,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.grey.shade300),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 4.0,
                spreadRadius: 2.0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalText(text: title, type: TextType.bold, fontSize: 16.0),
              // SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    size: 45,
                    color: Colors.blue,
                  ),
                  Row(
                    children: [
                      GlobalText(text: number, type: TextType.bold, fontSize: 36.0 ),
                      Column(
                        children: [
                          const SizedBox(height: 20.0),
                          GlobalText(text: symbols, type: TextType.bold, fontSize: 16.0),
                        ],
                      )
                    ],
                  )
                ],
              ),
              // SizedBox(height: 8.0),
              GlobalText(text: description, type: TextType.desc, fontSize: 10.0, color: Colors.grey)
            ],
          ),
        ),
        const SizedBox(width: 16.0)
      ],
    );
  }
}
