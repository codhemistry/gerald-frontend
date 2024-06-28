import 'package:flutter/material.dart';

class HomeCardData {
  final String title;
  final IconData icon;
  final String number;
  final String symbols;
  final String description;

  HomeCardData({
    required this.title,
    required this.icon,
    required this.number,
    required this.symbols,
    required this.description,
  });
}

final List<HomeCardData> homeCardItems = [
  HomeCardData(
    title: 'Cuaca',
    icon: Icons.cloud,
    number: '50',
    symbols: '%',
    description: 'Kemungkinan Hujan',
  ),
  HomeCardData(
    title: 'Ketinggian Air',
    icon: Icons.water,
    number: '90',
    symbols: 'cm',
    description: '+10% dalam 1 jam',
  ),
  HomeCardData(
    title: 'Status Pompa',
    icon: Icons.water_damage_rounded,
    number: '3',
    symbols: '/4',
    description: 'menyala',
  ),
];
