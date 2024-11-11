import 'package:flutter/material.dart';
import 'package:user_app/pages/detail.dart';
import '../services/services.dart';
import '../../model/user_model.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData()async{
    users = await UserService(). fetchUser();
    print('ini data user ${users.length}');
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailUserPage(
                  userId: users[index].id
                ),
               )
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('${users[index].firstname } ${users[index].lastname}'),
              leading:  Image.network(users[index].avatar),
            ),
          ),
        ),
      ),
    );
  }
}