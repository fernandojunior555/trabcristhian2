import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io'; // Importe a biblioteca 'dart:io' para usar a classe File


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  bool _isEditing = false;
  String _imagePath = ''; // Armazenará o caminho da imagem selecionada

  @override
  void initState() {
    super.initState();
    // Inicialize os controladores com os dados do usuário (se disponíveis)
    _nameController.text = 'Seu Nome'; // Substitua pelo nome real do usuário
    _emailController.text = 'seuemail@example.com'; // Substitua pelo e-mail real do usuário
  }

  // Função para escolher uma foto do dispositivo
  Future<void> _pickImage() async {
    // Implemente a lógica para escolher uma foto do dispositivo aqui
    // Pode usar o ImagePicker ou outra biblioteca para essa finalidade
    // Atualize o valor da variável _imagePath com o caminho da imagem selecionada
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.save : Icons.edit),
            onPressed: () {
              setState(() {
                if (_isEditing) {
                  // Salvar as alterações feitas pelo usuário
                  // Você pode adicionar código aqui para salvar os dados do usuário
                }
                _isEditing = !_isEditing;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: _isEditing ? _pickImage : null, // Chama a função para escolher uma foto
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: GestureDetector(
                onTap: _isEditing ? _pickImage : null,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: _imagePath.isNotEmpty ? FileImage(File(_imagePath)) : null,
                  child: _imagePath.isEmpty ? Icon(Icons.camera_alt, size: 60) : null,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nome:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: _nameController,
              readOnly: !_isEditing,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'E-mail:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: _emailController,
              readOnly: !_isEditing,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
