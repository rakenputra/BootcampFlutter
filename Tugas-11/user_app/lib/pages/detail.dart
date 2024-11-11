import 'package:flutter/material.dart';
import 'package:user_app/model/user_model.dart';
import 'package:user_app/services/services.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;
  const DetailUserPage({super.key, required this.userId});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? user;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    user = await UserService().detailUser(widget.userId);
    isLoading = false;

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isLoading
          ? const Center(
            child: CircularProgressIndicator(),
          )
          : ListTile(
            title: Text('${user?.firstname} ${user?.lastname}'),
            leading: Image.network(user?.avatar ?? ''),
            subtitle: Text(user?.email ?? ''),
          ),
        ),
    );
  }
}