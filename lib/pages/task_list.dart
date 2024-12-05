import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'title': 'Faire les courses', 'description': 'Acheter des légumes'},
    {'title': 'Réunion', 'description': 'Préparer les documents'},
    {'title': 'Sport', 'description': 'Entraînement à 18h'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste des Tâches')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index]; // Récupère une tâche dans la liste.
          return ListTile(
            title: Text(task['title']!), // Affiche le titre de la tâche.
            subtitle: Text(task['description']!), // Affiche la description de la tâche.
            onTap: () { // Déclenche une action lorsque l'élément est cliqué.
              Navigator.pushNamed(
                context,           // Contexte de navigation.
                '/taskDetails',    // Nom de la route définie dans main.dart.
                arguments: task,   // Envoie les données de la tâche comme argument.
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/taskForm'),
        child: Icon(Icons.add),
      ),
    );
  }
}
