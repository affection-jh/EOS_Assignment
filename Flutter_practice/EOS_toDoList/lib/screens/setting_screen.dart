import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String name = "이름";
  String shortBio = "한줄 소개";

  void _editName() {
    TextEditingController nameController = TextEditingController();

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('이름변경'),
            content: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: '새 이름 입력',
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  )),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('취소',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ),
              TextButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty) {
                    setState(() {
                      name = nameController.text;
                      nameController.clear();
                    });
                    Navigator.of(context).pop();
                  }
                },
                child: Text('저장',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              )
            ],
          );
        });
  }

  void _editBio() {
    TextEditingController nameController = TextEditingController();

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('한줄 소개 변경'),
            content: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: '새 소개 입력',
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  )),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('취소',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ),
              TextButton(
                onPressed: () {
                  if (nameController.text.isNotEmpty) {
                    setState(() {
                      name = nameController.text;
                    });
                    Navigator.of(context).pop();
                  }
                },
                child: Text('저장',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              )
            ],
          );
        });
  }

  Widget _buildListTile(
      {required String title,
      required String trailingText,
      required VoidCallback onTap}) {
    return ListTile(
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trailingText,
            style: TextStyle(color: Colors.grey),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("setting page")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              width: 140,
              height: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(
                  'assets/images/kijae.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              _buildListTile(
                  title: name,
                  trailingText: shortBio,
                  onTap: () {
                    _editName();
                  }),
              _buildListTile(
                  title: shortBio,
                  trailingText: shortBio,
                  onTap: () {
                    _editBio();
                  })
            ],
          ))
        ],
      ),
    );
  }
}
