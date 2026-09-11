import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  final List<Map<String, String>> aulas = const [
    {'horario': '08:00 - 09:00', 'materia': 'Desenvolvimento Flutter'},
    {'horario': '09:00 - 10:00', 'materia': 'Arquitetura de Software'},
    {'horario': '10:15 - 11:15', 'materia': 'Engenharia de Requisitos'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade de Aulas de Hoje'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: aulas.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFE3F2FD),
                child: Icon(
                  Icons.schedule, 
                  color: Colors.blue.shade700,
                ),
              ),
              title: Text(
                aulas[index]['materia']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Text(
                aulas[index]['horario']!,
                style: TextStyle(
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}