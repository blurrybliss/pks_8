import 'package:flutter/material.dart';
import 'package:practice_4/model/flowers.dart';

class AddFlowerPage extends StatelessWidget {
  final Function(Flowers) onAddFlower;

  AddFlowerPage({super.key, required this.onAddFlower});

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _imageUrlController = TextEditingController();
  final _costController = TextEditingController();
  final _articleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Добавить новый цветок')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Название'),
              ),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(labelText: 'Описание'),
              ),
              TextField(
                controller: _imageUrlController,
                decoration: const InputDecoration(labelText: 'Ссылка на фото'),
              ),
              TextField(
                controller: _costController,
                decoration: const InputDecoration(labelText: 'Стоимость'),
              ),
              TextField(
                controller: _articleController,
                decoration: const InputDecoration(labelText: 'Артикул'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final newFlower = Flowers(
                    DateTime.now().millisecondsSinceEpoch,
                    _titleController.text,
                    _descriptionController.text,
                    _imageUrlController.text,
                    _costController.text,
                    _articleController.text,
                  );
                  onAddFlower(newFlower);
                  Navigator.pop(context);
                },
                child: const Text('Добавить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}